unitDef = {
  unitname               = [[shipriot]],
  name                   = [[Corsair]],
  description            = [[Corvette (Raider/Riot)]],
  acceleration           = 0.0417,
  activateWhenBuilt      = true,
  brakeRate              = 0.142,
  buildCostMetal         = 280,
  builder                = false,
  buildPic               = [[shipriot.png]],
  canGuard               = true,
  canMove                = true,
  canPatrol              = true,
  category               = [[SHIP]],
  collisionVolumeOffsets = [[0 0 0]],
  collisionVolumeScales  = [[32 32 102]],
  collisionVolumeType    = [[cylZ]],
  corpse                 = [[DEAD]],

  customParams           = {
    turnatfullspeed = [[1]],
    --extradrawrange = 420,
  },

  explodeAs              = [[SMALL_UNITEX]],
  floater                = true,
  footprintX             = 4,
  footprintZ             = 4,
  iconType               = [[shipriot]],
  idleAutoHeal           = 5,
  idleTime               = 1800,
  maxDamage              = 1150,
  maxVelocity            = 2.3,
  minCloakDistance       = 75,
  minWaterDepth          = 10,
  movementClass          = [[BOAT4]],
  noAutoFire             = false,
  noChaseCategory        = [[TERRAFORM FIXEDWING SATELLITE]],
  objectName             = [[shipriot.s3o]],
  script                 = [[shipriot.lua]],
  selfDestructAs         = [[SMALL_UNITEX]],
  sightDistance          = 500,
  
  sfxtypes               = {

    explosiongenerators = {
      [[custom:RAIDMUZZLE]],
      [[custom:RAIDDUST]],
    },

  },
  
  sonarDistance          = 500,
  turninplace            = 0,
  turnRate               = 500,
  waterline              = 0,
  workerTime             = 0,

  weapons                = {

    {
      def                = [[GAUSS]],
      badTargetCategory  = [[FIXEDWING]],
      onlyTargetCategory = [[FIXEDWING LAND SINK TURRET SUB SHIP SWIM FLOAT GUNSHIP HOVER]],
    },


    {
      def                = [[GAUSS]],
      badTargetCategory  = [[FIXEDWING]],
      onlyTargetCategory = [[FIXEDWING LAND SINK TURRET SUB SHIP SWIM FLOAT GUNSHIP HOVER]],
    },

  },


  weaponDefs             = {

	GAUSS = {
		  name                    = [[Light Gauss Cannon]],
		  alphaDecay              = 0.18,
		  areaOfEffect            = 16,
		  avoidfeature            = false,
		  burst                   = 3,
		  burstRate               = 0.03,
		  bouncerebound           = 0.15,
		  bounceslip              = 1,
		  cegTag                  = [[gauss_tag_l]],
		  craterBoost             = 0,
		  craterMult              = 0,
		  collideFriendly         = false,

		  customParams = {
			burst = Shared.BURST_RELIABLE,
			single_hit = true,
		  },

		  damage                  = {
			default = 300.1,
			planes  = 300.1,
		  },
		  
		  explosionGenerator      = [[custom:gauss_hit_m]],
		  groundbounce            = 1,
		  impactOnly              = true,
		  impulseBoost            = 0,
		  impulseFactor           = 0,
		  interceptedByShieldType = 1,
		  noExplode               = true,
		  noSelfDamage            = true,
		  numbounce               = 36,
		  range                   = 420,
		  projectiles             = 3,
          sprayangle              = 3800,
		  reloadtime              = 3.0,
		  rgbColor                = [[0.5 1 1]],
		  separation              = 0.5,
		  size                    = 0.32,
		  sizeDecay               = -0.04,
		  soundHit                = [[weapon/gauss_hit]],
		  soundHitVolume          = 1.5,
		  soundStart              = [[weapon/gauss_fire]],
		  soundStartVolume        = 1.05,
		  stages                  = 28,
		  turret                  = true,
		  waterweapon			  = true,
		  weaponType              = [[Cannon]],
		  weaponVelocity          = 630,
		  dynDamageExp            = 1.5,
		  dynDamageMin            = 0.05,
	},
    
    
  },


  featureDefs            = {

    DEAD = {
      blocking         = false,
      featureDead      = [[HEAP]],
      footprintX       = 3,
      footprintZ       = 3,
      object           = [[shipriot_dead.s3o]],
    },
    
    HEAP  = {
      blocking         = false,
      footprintX       = 3,
      footprintZ       = 3,
      object           = [[debris3x3b.s3o]],
    },

  },

}

return lowerkeys({ shipriot = unitDef })
