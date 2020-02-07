unitDef = {
  unitname               = [[gunshipaa]],
  name                   = [[Trident]],
  description            = [[Anti-Air Gunship]],
  acceleration           = 0.18,
  airStrafe              = 0,
  bankingAllowed         = false,
  brakeRate              = 0.4,
  buildCostMetal         = 270,
  builder                = false,
  buildPic               = [[gunshipaa.png]],
  canFly                 = true,
  canGuard               = true,
  canMove                = true,
  canPatrol              = true,
  canSubmerge            = false,
  category               = [[GUNSHIP]],
  collisionVolumeOffsets = [[0 0 0]],
  collisionVolumeScales  = [[36 36 36]],
  collisionVolumeType    = [[ellipsoid]],
  collide                = true,
  corpse                 = [[DEAD]],
  cruiseAlt              = 110,

  customParams           = {
	modelradius    = [[18]],
	midposoffset   = [[0 15 0]],
	selection_velocity_heading = 1,
  },

  explodeAs              = [[GUNSHIPEX]],
  floater                = true,
  footprintX             = 3,
  footprintZ             = 3,
  hoverAttack            = true,
  iconType               = [[gunshipaa]],
  idleAutoHeal           = 5,
  idleTime               = 1800,
  maxDamage              = 870,
  maxVelocity            = 3.8,
  minCloakDistance       = 75,
  noAutoFire             = false,
  noChaseCategory        = [[TERRAFORM LAND SINK TURRET SHIP SWIM FLOAT SUB HOVER]],
  objectName             = [[trifighter.s3o]],
  script                 = [[gunshipaa.lua]],
  selfDestructAs         = [[GUNSHIPEX]],

  sfxtypes               = {

    explosiongenerators = {
      [[custom:rapiermuzzle]],
    },

  },
  sightDistance          = 660,
  turnRate               = 0,
  workerTime             = 0,

  weapons                = {

    {
      def                = [[AA_MISSILE]],
      --badTargetCategory  = [[GUNSHIP]],
      onlyTargetCategory = [[GUNSHIP FIXEDWING]],
    },
	{
      def = [[COR_SHIELD_SMALL]],
    },

  },

  weaponDefs             = {

    AA_MISSILE = {
      name                    = [[Homing Missiles]],
      areaOfEffect            = 48,
	  avoidFeature            = false,
      canattackground         = false,
      cegTag                  = [[missiletrailblue]],
	  collideFriendly         = false,
      craterBoost             = 1,
      craterMult              = 2,
      cylinderTargeting       = 1,

	  customParams        	  = {
		burst = Shared.BURST_RELIABLE,

		isaa = [[1]],
		script_reload = [[12]],
		script_burst = [[3]],
		
		light_camera_height = 2500,
		light_radius = 200,
		light_color = [[0.5 0.6 0.6]],
	  },

      damage                  = {
        default = 22.01,
        planes  = 220.1,
        subs    = 4.4,
      },

      explosionGenerator      = [[custom:FLASH2]],
      fireStarter             = 70,
      fixedlauncher           = true,
      flightTime              = 3.3,
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      interceptedByShieldType = 2,
      model                   = [[wep_m_fury.s3o]],
      noSelfDamage            = true,
      range                   = 820,
      reloadtime              = 1.2,
      smokeTrail              = true,
      soundHit                = [[weapon/missile/rocket_hit]],
      soundStart              = [[weapon/missile/missile_fire7]],
      startVelocity           = 650,
      texture2                = [[AAsmoketrail]],
	  texture3                = [[null]],
      tolerance               = 32767,
      tracks                  = true,
      turnRate                = 90000,
      turret                  = false,
      weaponAcceleration      = 550,
      weaponTimer             = 0.2,
      weaponType              = [[StarburstLauncher]],
      weaponVelocity          = 700,
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
      shieldPower             = 400,
      shieldPowerRegen        = 5,
      shieldPowerRegenEnergy  = 0,
      shieldRadius            = 75,
      shieldRepulser          = false,
      smartShield             = true,
	  shieldStartingPower     = 200,
      visibleShield           = false,
      visibleShieldRepulse    = false,
      --texture1                = [[shield3mist]],
      --visibleShield           = true,
      --visibleShieldHitFrames  = 4,
      --visibleShieldRepulse    = true,
      weaponType              = [[Shield]],
    },


  },

  featureDefs            = {

    DEAD  = {
      blocking         = true,
      featureDead      = [[HEAP]],
      footprintX       = 2,
      footprintZ       = 2,
      object           = [[trifighter_dead.s3o]],
    },

    
    HEAP  = {
      blocking         = false,
      footprintX       = 2,
      footprintZ       = 2,
      object           = [[debris3x3c.s3o]],
    },

  },

}

return lowerkeys({ gunshipaa = unitDef })