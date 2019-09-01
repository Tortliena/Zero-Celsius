unitDef = {
  unitname            = [[bomberheavy]],
  name                = [[Likho]],
  description         = [[Singularity Bomber]],
  --autoheal          = 25,
  brakerate           = 0.4,
  buildCostMetal      = 2200,
  builder             = false,
  buildPic            = [[bomberheavy.png]],
  canFly              = true,
  canGuard            = true,
  canMove             = true,
  canPatrol           = true,
  canSubmerge         = false,
  category            = [[FIXEDWING]],
  collide             = false,
  collisionVolumeOffsets = [[-2 0 0]],
  collisionVolumeScales  = [[32 12 40]],
  collisionVolumeType    = [[box]],
  selectionVolumeOffsets = [[0 0 0]],
  selectionVolumeScales  = [[65 25 65]],
  selectionVolumeType    = [[cylY]],
  corpse              = [[DEAD]],
  crashDrag           = 0.02,
  cruiseAlt           = 250,

  customParams        = {
    modelradius      = [[10]],
    requireammo      = [[1]],
    reammoseconds    = [[40]],
    refuelturnradius = [[130]],
	reallyabomber    = [[1]],
  },

  explodeAs           = [[GUNSHIPEX]],
  floater             = true,
  footprintX          = 3,
  footprintZ          = 3,
  iconType            = [[bombernuke]],
  idleAutoHeal        = 5,
  idleTime            = 1800,
  maneuverleashlength = [[1440]],
  maxAcc              = 0.5,
  maxDamage           = 3850,
  maxAileron          = 0.067,
  maxElevator         = 0.0067,
  maxRudder           = 0.0018,
  maxFuel             = 1000000,
  maxVelocity         = 5.75,
  minCloakDistance    = 75,
  mygravity           = 1,
  noAutoFire          = false,
  noChaseCategory     = [[TERRAFORM FIXEDWING SATELLITE GUNSHIP SUB]],
  objectName          = [[ARMCYBR]],
  refuelTime          = 20,
  script              = [[bomberheavy.lua]],
  selfDestructAs      = [[GUNSHIPEX]],
  sightDistance       = 660,
  turnRadius          = 15,
  workerTime          = 0,

  weapons             = {

    {
      def                = [[ARM_PIDR]],
      badTargetCategory  = [[GUNSHIP FIXEDWING]],
      onlyTargetCategory = [[SWIM LAND SINK TURRET FLOAT SHIP HOVER GUNSHIP FIXEDWING]],
    },
	{
      def = [[COR_SHIELD_SMALL]],
    },

  },


  weaponDefs          = {

    ARM_PIDR = {
      name                    = [[Implosion Bomb]],
      areaOfEffect            = 410,
      avoidFeature            = false,
      avoidFriendly           = false,
      burnblow                = true,
      cegTag                  = [[raventrail]],
      collideFriendly         = false,
      burst                   = 3,
      burstRate               = 0.95,
      craterBoost             = 0.33,
      craterMult              = 1.0,

      customParams            = {
		burst = Shared.BURST_UNRELIABLE,

        reaim_time = 15, -- Fast update not required (maybe dangerous)
        light_color = [[1.2 0.65 0.3]],
        light_radius = 720,
      },

      damage                  = {
        default = 1000.1,
        planes  = 1000.1,
        subs    = 100.1,
      },

      edgeEffectiveness       = 0.05,
      explosionGenerator      = [[custom:NUKE_150]],
      fireStarter             = 100,
      impulseBoost            = 0,
      impulseFactor           = -0.8,
      interceptedByShieldType = 2,
      model                   = [[wep_m_deathblow.s3o]],
	  myGravity               = 0.66,
      range                   = 280,
      reloadtime              = 0.95,
      smokeTrail              = false,
      soundHit                = [[weapon/missile/liche_hit]],
      soundStart              = [[weapon/missile/liche_fire]],
      startVelocity           = 350,
      tolerance               = 16000,
      tracks                  = true,
      turnRate                = 30000,
      weaponAcceleration      = 200,
      weaponType              = [[AircraftBomb]],
      weaponVelocity          = 400,
    },
	COR_SHIELD_SMALL = {
      name                    = [[Energy Shield]],

      damage                  = {
        default = 10,
      },

      exteriorShield          = true,
      shieldAlpha             = 0.2,
      shieldBadColor          = [[1 0.1 0.1 1]],
      shieldGoodColor         = [[0.1 0.1 1 1]],
      shieldInterceptType     = 3,
      shieldPower             = 600,
      shieldPowerRegen        = 5,
      shieldRadius            = 70,
      shieldRepulser          = false,
      smartShield             = true,
	  shieldStartingPower     = 300,
      visibleShield           = false,
      visibleShieldRepulse    = false,
      --texture1                = [[shield3mist]],
      --visibleShield           = true,
      --visibleShieldHitFrames  = 4,
      --visibleShieldRepulse    = true,
      weaponType              = [[Shield]],
    },

  },


  featureDefs         = {

    DEAD  = {
      blocking         = true,
      featureDead      = [[HEAP]],
      footprintX       = 2,
      footprintZ       = 2,
      object           = [[licho_d.s3o]],
    },

    HEAP  = {
      blocking         = false,
      footprintX       = 2,
      footprintZ       = 2,
      object           = [[debris3x3b.s3o]],
    },

  },

}

return lowerkeys({ bomberheavy = unitDef })
