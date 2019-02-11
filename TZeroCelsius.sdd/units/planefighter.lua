unitDef = {
  unitname               = [[planefighter]],
  name                   = [[Swift]],
  description            = [[Multi-role Fighter]],
  brakerate              = 0.4,
  buildCostMetal         = 120,
  buildPic               = [[planefighter.png]],
  canFly                 = true,
  canGuard               = true,
  canMove                = true,
  canPatrol              = true,
  canSubmerge            = false,
  category               = [[FIXEDWING]],
  collide                = false,
  collisionVolumeOffsets = [[0 0 5]],
  collisionVolumeScales  = [[25 8 40]],
  collisionVolumeType    = [[box]],
  selectionVolumeOffsets = [[0 0 10]],
  selectionVolumeScales  = [[50 50 70]],
  selectionVolumeType    = [[cylZ]],
  corpse                 = [[DEAD]],
  crashDrag              = 0.02,
  cruiseAlt              = 200,

  customParams           = {

	specialreloadtime = [[850]],
	boost_speed_mult = 1.5,
	boost_accel_mult = 3.5,
	boost_duration = 150, -- frames

	fighter_pullup_dist = 400,

	midposoffset   = [[0 3 0]],
	modelradius    = [[5]],
	refuelturnradius = [[80]],
  },

  explodeAs              = [[GUNSHIPEX]],
  fireState              = 2,
  floater                = true,
  footprintX             = 2,
  footprintZ             = 2,
  frontToSpeed           = 0,
  iconType               = [[fighter]],
  idleAutoHeal           = 5,
  idleTime               = 1800,
  maneuverleashlength    = [[1280]],
  maxAcc                 = 0.5,
  maxDamage              = 330,
  maxRudder              = 0.007,
  maxVelocity            = 12,
  minCloakDistance       = 75,
  mygravity              = 1,
  noAutoFire             = false,
  noChaseCategory        = [[TERRAFORM SATELLITE SUB LAND SINK TURRET SHIP SWIM FLOAT HOVER]],
  objectName             = [[fighter.s3o]],
  script                 = [[planefighter.lua]],
  selfDestructAs         = [[GUNSHIPEX]],

  sfxtypes               = {

    explosiongenerators = {
      [[custom:MUZZLE_ORANGE]],
      [[custom:FF_PUFF]],
      [[custom:BEAMWEAPON_MUZZLE_RED]],
      [[custom:FLAMER]],
    },

  },
  sightDistance          = 520,
  speedToFront           = 0,
  turnRadius             = 150,
  turnRate               = 839,

  weapons                = {

    {
      def                = [[SWIFT_GUN]],
      badTargetCategory  = [[FIXEDWING]],
      mainDir            = [[0 0 1]],
      maxAngleDif        = 60,
      onlyTargetCategory = [[FIXEDWING LAND SINK TURRET SHIP SWIM FLOAT GUNSHIP HOVER]],
	  badTargetCategory  = [[LAND SINK TURRET SHIP SWIM FLOAT HOVER]],
    },


    {
      def                = [[MISSILE]],
      badTargetCategory  = [[]],
      onlyTargetCategory = [[FIXEDWING LAND SINK TURRET SHIP SWIM FLOAT GUNSHIP HOVER]],
    },

  },


  weaponDefs             = {

    SWIFT_GUN  = {
      name                    = [[Mini Laser Blaster]],
      areaOfEffect            = 8,
      collideFriendly         = false,
      coreThickness           = 0.5,
      craterBoost             = 0,
      craterMult              = 0,

      customparams = {
		light_camera_height = 1500,
        light_ground_height = 120,
		light_radius = 100,
      },

      damage                  = {
        default = 9,
        subs    = 0.9,
      },

      duration                = 0.012,
      edgeEffectiveness       = 1,
      explosionGenerator      = [[custom:BEAMWEAPON_HIT_RED]],
      fireStarter             = 10,
      impactOnly              = true,
      impulseFactor           = 0,
      interceptedByShieldType = 1,
      lodDistance             = 10000,
      range                   = 700,
      reloadtime              = 0.21,
      rgbColor                = [[1 0 0]],
      soundHit                = [[weapon/laser/lasercannon_hit]],
      soundStart              = [[weapon/laser/small_laser_fire3]],
      soundTrigger            = true,
      sweepfire               = false,
      thickness               = 2.85043856274785,
      tolerance               = 2000,
      turret                  = true,
      weaponType              = [[LaserCannon]],
      weaponVelocity          = 2000,
    },


    MISSILE = { --TTODO Make them only shoot while sweeping at enemies.
      name                    = [[Guided Missiles]],
      areaOfEffect            = 40,
      avoidFriendly           = true,
      cegTag                  = [[missiletrailblue]],
      collideFriendly         = false,
      craterBoost             = 0,
      craterMult              = 0,
	  burst                   = 2,
	  burstRate               = 0.5,
	  cylinderTargeting       = 1, --TTODO Look if it affects firing when sweeping or not.
	  
	  customParams        	  = {
		burst = Shared.BURST_RELIABLE,

		light_color = [[0.5 0.6 0.6]],
	  },

      damage                  = {
        default = 40.1,
        planes  = 40.1,
        subs    = 4.1,
      },
	
	  edgeeffectiveness       = 0.5,
      explosionGenerator      = [[custom:WEAPEXP_PUFF]],
      fireStarter             = 70,
      flightTime              = 3,
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      interceptedByShieldType = 2,
      metalpershot            = 0,
      model                   = [[wep_m_fury.s3o]],
      noSelfDamage            = true,
      range                   = 530,
      reloadtime              = 3.5,
      smokeTrail              = true,
      soundHit                = [[weapon/missile/rocket_hit]],
      soundStart              = [[weapon/missile/missile_fire7]],
	  sweepfire               = false, -- TTODO Look if it is related to sweeping at enemies.
      startVelocity           = 200,
      texture2                = [[AAsmoketrail]],
      tolerance               = 22000,
      tracks                  = true,
      turnRate                = 8000,
      weaponAcceleration      = 550,
      weaponType              = [[MissileLauncher]],
      weaponVelocity          = 750,
    },

  },


  featureDefs            = {

    DEAD  = {
      blocking         = true,
      featureDead      = [[HEAP]],
      footprintX       = 2,
      footprintZ       = 2,
      object           = [[fighter_dead.s3o]],
    },


    HEAP  = {
      blocking         = false,
      footprintX       = 2,
      footprintZ       = 2,
      object           = [[debris2x2c.s3o]],
    },

  },

}

return lowerkeys({ planefighter = unitDef })
