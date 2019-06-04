include "constants.lua"

--Code mixed with TurretAAHeavy.
--------------------------------------------------------------------------------
-- pieces
--------------------------------------------------------------------------------

local gp, base, turret, ring, center, firepoint, crystal1, crystal2, crystal3, crystal4 = piece('gp', 'base', 'turret', 'ring', 'center', 'firepoint', 'crystal1', 'crystal2', 'crystal3', 'crystal4')

local smokePiece = {turret, firepoint}

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

local SIG_Idle = 1
local SIG_Aim = 2
local SIG_Aim2 = 4
local SIG_Activate = 8
local lastHeading = 0


local WOBBLE_DIST_POS = 2
local WOBBLE_DIST_NEG = -2
local WOBBLE_SPEED = 2


--The angular speed of the circle in front of the turret.
local RING_SPIN_SPEED = -120

--Main moving part
local MAIN_CRYSTAL_IDLE_SPIN_SPEED = math.rad(20)
local MAIN_CRYSTAL_IDLE_SPIN_ACCELERATION = math.rad(10)
local MAIN_CRYSTAL_AIMING_SPIN_SPEED = math.rad(100)
local MAIN_CRYSTAL_AIMING_SPIN_ACCELERATION = math.rad(100)

--The small crystals on the parts around
local CRYSTALS_IDLE_SPIN_SPEED = math.rad(40)
local CRYSTALS_IDLE_SPIN_ACCELERATION = math.rad(40)
local CRYSTALS_AIMING_SPIN_SPEED = math.rad(120)
local CRYSTALS_AIMING_SPIN_ACCELERATION = math.rad(120)

local CRYSTAL_TURN_SPEED = 180


local function IdleAnim()
	--Signal setups.
	Signal(SIG_Idle)
	SetSignalMask(SIG_Idle)
	--Animations
	
	--Turning main part
	Spin(ring, z_axis, math.rad(RING_SPIN_SPEED))
	StartSpinningCrystalsIdle()
end

--Make the crystals spin at a slow speed.
function StartSpinningCrystalsIdle()
	Spin(turret, y_axis, MAIN_CRYSTAL_IDLE_SPIN_SPEED, MAIN_CRYSTAL_IDLE_SPIN_ACCELERATION) 
	Spin(crystal1, y_axis, -CRYSTALS_IDLE_SPIN_SPEED, CRYSTALS_IDLE_SPIN_ACCELERATION)
	Spin(crystal2, x_axis, -CRYSTALS_IDLE_SPIN_SPEED, CRYSTALS_IDLE_SPIN_ACCELERATION)
	Spin(crystal3, y_axis, CRYSTALS_IDLE_SPIN_SPEED, CRYSTALS_IDLE_SPIN_ACCELERATION)
	Spin(crystal4, x_axis, CRYSTALS_IDLE_SPIN_SPEED, CRYSTALS_IDLE_SPIN_ACCELERATION)
end

--Makes the crystals spin at a fast speed.
function StartSpinningCrystalsAiming() 
	Spin(turret, y_axis, MAIN_CRYSTAL_AIMING_SPIN_SPEED, MAIN_CRYSTAL_AIMING_SPIN_ACCELERATION)
	Spin(crystal1, y_axis, -CRYSTALS_AIMING_SPIN_SPEED, CRYSTALS_AIMING_SPIN_ACCELERATION)
	Spin(crystal2, x_axis, -CRYSTALS_AIMING_SPIN_SPEED, CRYSTALS_AIMING_SPIN_ACCELERATION)
	Spin(crystal3, y_axis, CRYSTALS_AIMING_SPIN_SPEED, CRYSTALS_AIMING_SPIN_ACCELERATION)
	Spin(crystal4, x_axis, CRYSTALS_AIMING_SPIN_SPEED, CRYSTALS_AIMING_SPIN_ACCELERATION)
end

--Anim when unit is created.
local function OnCreatedAnim() 
	Turn(turret, x_axis, -math.rad(90), math.rad(25))
	Sleep(3600) --90 / 25
	StartSpinningCrystalsIdle()
end

function script.Create()
	while (GetUnitValue(COB.BUILD_PERCENT_LEFT) ~= 0) do Sleep(400) end
	OnCreatedAnim()
	StartThread(SmokeUnit, smokePiece)
	StartThread(IdleAnim)
end

function script.QueryWeapon() 
	return firepoint
end

function script.AimFromWeapon()
	return center
end

local function RestoreAfterDelay()
	Sleep(6000)
	StartThread(IdleAnim)
end

function script.AimWeapon(num, heading, pitch)
	Signal(SIG_Idle)
	Signal(SIG_Aim)
	SetSignalMask(SIG_Aim)
	StartSpinningCrystalsAiming()
	--[[Turn(turret, y_axis, heading, math.rad(360))
	Turn(barrel, x_axis, -pitch, math.rad(90))
	WaitForTurn(turret, y_axis)
	WaitForTurn(barrel, x_axis)
	lastHeading = heading--]]
	StartThread(RestoreAfterDelay)
	if num == 1 then return false -- fake targeter
	else return true end
end

function script.Killed(recentDamage, maxHealth)
	local severity = recentDamage / maxHealth
	if (severity <= .5) then
		Explode(base, SFX.NONE)
		Explode(ring, SFX.NONE)
		Explode(turret, SFX.NONE)
		return 1 -- corpsetype
	else		
		Explode(base, SFX.SHATTER)
		Explode(turret, SFX.SMOKE + SFX.FIRE)
		Explode(ring, SFX.SMOKE + SFX.FIRE + SFX.EXPLODE)
		return 2 -- corpsetype
	end
end

local function DoSomeHax()
	Sleep(33)
	local commands = Spring.GetCommandQueue(unitID, 0)
	if commands == 0 then
		Spring.GiveOrderToUnit(unitID, CMD.STOP, {}, {})
	end
end

function script.BlockShot(num, targetID)
	StartThread(DoSomeHax)
	return false
end
------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------

--Code from turretImpulse.bos (unmodified).
--[[


static-var isOn;



SmokeUnit(healthpercent, sleeptime, smoketype)
{
	while( get BUILD_PERCENT_LEFT )
	{
		sleep 400;
	}
	while( TRUE )
	{
		healthpercent = get HEALTH;
		if( healthpercent < 66 )
		{
			smoketype = 256 | 2;
			if( Rand( 1, 66 ) < healthpercent )
			{
				smoketype = 256 | 1;
			}
			emit-sfx smoketype from base;
		}
		sleeptime = healthpercent * 50;
		if( sleeptime < 200 )
		{
			sleeptime = 200;
		}
		sleep sleeptime;
	}
}

WobbleTurret() {
	while (1) {
		move turret to y-axis WOBBLE_DIST_POS speed WOBBLE_SPEED;
		wait-for-move turret along y-axis;
		move turret to y-axis WOBBLE_DIST_NEG speed WOBBLE_SPEED;
		wait-for-move turret along y-axis;
	}
}

WobbleCrystals() {
	while (1) {
		move crystal1 to y-axis WOBBLE_DIST_NEG speed WOBBLE_SPEED;
		move crystal2 to x-axis WOBBLE_DIST_NEG speed WOBBLE_SPEED;
		move crystal3 to y-axis WOBBLE_DIST_POS speed WOBBLE_SPEED;
		move crystal4 to x-axis WOBBLE_DIST_POS speed WOBBLE_SPEED;
		wait-for-move crystal1 along y-axis;
		wait-for-move crystal2 along x-axis;
		wait-for-move crystal3 along y-axis;
		wait-for-move crystal4 along x-axis;
		move crystal1 to y-axis WOBBLE_DIST_POS speed WOBBLE_SPEED;
		move crystal2 to x-axis WOBBLE_DIST_POS speed WOBBLE_SPEED;
		move crystal3 to y-axis WOBBLE_DIST_NEG speed WOBBLE_SPEED;
		move crystal4 to x-axis WOBBLE_DIST_NEG speed WOBBLE_SPEED;
		wait-for-move crystal1 along y-axis;
		wait-for-move crystal2 along x-axis;
		wait-for-move crystal3 along y-axis;
		wait-for-move crystal4 along x-axis;
	}
}

Create()
{
	start-script SmokeUnit();
	start-script WobbleTurret();
	start-script WobbleCrystals();
	hide center;
	hide firepoint;
	spin turret around z-axis speed TURRET_SPIN_SPEED;
	spin ring around z-axis speed RING_SPIN_SPEED;
	isOn = 0;
}

Activate() {
	isOn = 1;
	signal SIG_ACTIVATE;
	set-signal-mask SIG_ACTIVATE;
	turn crystal1 to z-axis 0 speed CRYSTAL_TURN_SPEED;
	turn crystal2 to z-axis 0 speed CRYSTAL_TURN_SPEED;
	turn crystal3 to z-axis 0 speed CRYSTAL_TURN_SPEED;
	turn crystal4 to z-axis 0 speed CRYSTAL_TURN_SPEED;
}

Deactivate() {
	isOn = 0;
	signal SIG_ACTIVATE;
	set-signal-mask SIG_ACTIVATE;
	turn crystal1 to z-axis <180> speed CRYSTAL_TURN_SPEED;
	turn crystal2 to z-axis <180> speed CRYSTAL_TURN_SPEED;
	turn crystal3 to z-axis <180> speed CRYSTAL_TURN_SPEED;
	turn crystal4 to z-axis <180> speed CRYSTAL_TURN_SPEED;
}


AimFromWeapon1(piecenum)
{
	piecenum = center;
}

AimWeapon1(heading, pitch)
{
	signal SIG_AIM;
	set-signal-mask SIG_AIM;
	if (!isOn) return 0;
	turn turret to y-axis heading speed TURRET_AIM_SPEED;
	turn turret to x-axis <0.000000> - pitch speed TURRET_AIM_SPEED;
	wait-for-turn turret around y-axis;
	wait-for-turn turret around x-axis;
	return 1;
}

FireWeapon1()
{
	return 0;
}

QueryWeapon1(piecenum)
{
	piecenum = firepoint;
}

AimFromWeapon2(piecenum)
{
	piecenum = center;
}

AimWeapon2(heading, pitch)
{
	signal SIG_AIM_2;
	set-signal-mask SIG_AIM_2;
	if (isOn) return 0;
	turn turret to y-axis heading speed <300.170330>;
	turn turret to x-axis <0.000000> - pitch speed <300.126374>;
	wait-for-turn turret around y-axis;
	wait-for-turn turret around x-axis;
	return 1;
}

FireWeapon2()
{
	return 0;
}

QueryWeapon2(piecenum)
{
	piecenum = firepoint;
}

SweetSpot(piecenum)
{
	piecenum = center;
}

Killed(severity, corpsetype)
{
	if( severity <= 25 )
	{
		corpsetype = 1;
		explode base type BITMAPONLY | BITMAP3;
		explode ring type BITMAPONLY | BITMAP4;
		explode turret type BITMAPONLY | BITMAP1;
		return 1;
	}
	if( severity <= 50 )
	{
		corpsetype = 1;
		explode base type BITMAPONLY | BITMAP3;
		explode ring type FALL | BITMAP4;
		explode turret type SHATTER | BITMAP1;
		return 1;
	}
	if( severity < 100 )
	{
		corpsetype = 2;
		explode base type BITMAPONLY | BITMAP3;
		explode ring type FALL | SMOKE | FIRE | EXPLODE_ON_HIT | BITMAP4;
		explode turret type SHATTER | BITMAP1;
		return 2;
	}
	corpsetype = 2;
	explode base type BITMAPONLY | BITMAP3;
	explode ring type FALL | SMOKE | FIRE | EXPLODE_ON_HIT | BITMAP4;
	explode turret type SHATTER | BITMAP1;
	return 2;
}
--]]
