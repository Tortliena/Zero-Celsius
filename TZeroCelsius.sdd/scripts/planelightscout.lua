include 'constants.lua'
include "fixedwingTakeOff.lua"

--------------------------------------------------------------------
-- constants/vars
--------------------------------------------------------------------
local fuselage, KRisaravinglunatic, canardl, canardr, wingl, wingtipl, wingr, wingtipr, enginel, exhaustl, enginer, exhaustr = piece(
	"fuselage", "KRisaravinglunatic", "canardl", "canardr", "wingl", "wingtipl", "wingr", "wingtipr", "enginel", "exhaustl", "enginer", "exhaustr")
local smokePiece = {KRisaravinglunatic}

local SIG_TAKEOFF = 2
local takeoffHeight = UnitDefNames["planelightscout"].wantedHeight
--------------------------------------------------------------------
-- functions
--------------------------------------------------------------------

-- Reload movement speed penalty
local RELOAD_PENALTY = tonumber(UnitDefs[unitDefID].customParams.reload_move_penalty)
local isInSpeedPenalty = false

local function SetSelfSpeedMod(speedmod)
	Spring.SetUnitRulesParam(unitID, "selfMoveSpeedChange", speedmod)
	GG.UpdateUnitAttributes(unitID)
end

local function GetSpeedMod()
	return (Spring.GetUnitRulesParam(unitID, "totalMoveSpeedChange") or 1)
end

local function ReloadPenalty()
	isInSpeedPenalty = true
	SetSelfSpeedMod(RELOAD_PENALTY)
	Sleep(700) -- >=1s second reload so no point checking earlier.

	while true do
		local state = Spring.GetUnitWeaponState(unitID, 1, "reloadState")
		local gameFrame = Spring.GetGameFrame()
		if state - 32 < gameFrame then
			--Adding another sleep + check so that there is no downtime to the speed malus.
			Sleep(700)
			state = Spring.GetUnitWeaponState(unitID, 1, "reloadState")
			gameFrame = Spring.GetGameFrame()
			if state - 32 < gameFrame then
				isInSpeedPenalty = false
				SetSelfSpeedMod(1)
				return
			end
		end
		Sleep(300)
	end
end

function script.FireWeapon(num)
	if isInSpeedPenalty == false then
		StartThread(ReloadPenalty)
	end
end

function script.StopMoving()
	StartThread(GG.TakeOffFuncs.TakeOffThread, takeoffHeight, SIG_TAKEOFF)
end

function script.Create()
	StartThread(GG.TakeOffFuncs.TakeOffThread, takeoffHeight, SIG_TAKEOFF)
	StartThread(GG.Script.SmokeUnit, smokePiece)
end

function script.Killed(recentDamage, maxHealth)
	local severity = recentDamage/maxHealth
	if severity < 0.5 or (Spring.GetUnitMoveTypeData(unitID).aircraftState == "crashing") then
		Explode(wingr, SFX.EXPLODE)
		Explode(wingl, SFX.EXPLODE)
		Explode(fuselage, SFX.FALL)
		return 1
	else
		Explode(wingr, SFX.SHATTER)
		Explode(wingl, SFX.SHATTER)
		Explode(fuselage, SFX.SHATTER + SFX.SMOKE)
		return 2
	end
end
