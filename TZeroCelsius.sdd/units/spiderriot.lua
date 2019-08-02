unitDef = {
  unitname               = [[spiderriot]],
  name                   = [[Redback]],
  description            = [[Riot Spider]],
  acceleration           = 0.13,
  brakeRate              = 0.62,
  buildCostMetal         = 240,
  buildPic               = [[spiderriot.png]],
  canGuard               = true,
  canMove                = true,
  canPatrol              = true,
  category               = [[LAND]],
  collisionVolumeOffsets = [[0 5 0]],
  collisionVolumeScales  = [[36 36 36]],
  collisionVolumeType    = [[ellipsoid]], 
  corpse                 = [[DEAD]],

  customParams           = {
    aimposoffset   = [[0 10 0]],
  },

  explodeAs              = [[BIG_UNITEX]],
  footprintX             = 3,
  footprintZ             = 3,
  highTrajectory         = 2,
  iconType               = [[spiderriot]],
  idleAutoHeal           = 5,
  idleTime               = 1800,
  leaveTracks            = true,
  maxDamage              = 820,
  maxSlope               = 72,
  maxVelocity            = 1.52,
  maxWaterDepth          = 22,
  minCloakDistance       = 75,
  movementClass          = [[TKBOT3]],
  noChaseCategory        = [[TERRAFORM FIXEDWING SUB]],
  objectName             = [[spiderriot.s3o]],
  script                 = [[spiderriot.lua]],
  selfDestructAs         = [[BIG_UNITEX]],
  sightDistance          = 620,
  trackOffset            = 0,
  trackStrength          = 10,
  trackStretch           = 1,
  trackType              = [[ChickenTrackPointyShort]],
  trackWidth             = 55,
  turnRate               = 1050,

  weapons             = {

    {
      def                = [[LIGHTNING_BALL]],
      onlyTargetCategory = [[SWIM LAND SINK TURRET FLOAT SHIP HOVER]],
    },

  },


  weaponDefs          = {

    LIGHTNING_BALL = {
      name                    = [[Lightning ball]],
      accuracy                = 80,
      areaOfEffect            = 48,
      craterBoost             = 0,
      craterMult              = 0,

      customParams            = {
        extra_damage = 315,
		
		light_camera_height = 1600,
		light_color = [[0.44 0.62 1.0]],
		light_radius = 128,
      },
	  
      damage                  = {
        default = 105,
        planes  = 105,
        subs    = 1.1,
      },

      paralyzeTime            = 1,
	  size                    = 8.8,
      rgbColor                = [[0.46 0.72 1.0]],
	  explosionGenerator      = [[custom:lightningplosion]],
      impulseBoost            = 0,
      impulseFactor           = 0.1,
      interceptedByShieldType = 1,
      myGravity               = 0.11,
      noSelfDamage            = true,
      range                   = 820,
      reloadtime              = 7,
      soundHit                = [[weapon/lightning_fire]],
      soundStart              = [[weapon/cannon/cannon_fire3]],
	  soundHitVolume          = 1.0,
      soundStartVolume        = 7.0,
      turret                  = true,
      weaponType              = [[Cannon]],
      weaponVelocity          = 290,
	  
	  --Logic for making shots bounce. Note the bounce keywords are in lower letters only, apparently.
	  --bounceExplosionGenerator      = [[custom:YELLOW_LIGHTNINGPLOSION]],
	  --Targeting slightly in front so that forward-moving enemies are more likely to be hit.
	  targetBorder            = 0.2,
	  collideFriendly         = false,
	  groundbounce            = 1,
	  bounceslip              = 0.7,
	  bouncerebound           = 0.7,
	  numbounce               = 1,
	  --burnblow                = true,
    },

  },


  featureDefs            = {

    DEAD  = {
      blocking         = true,
      featureDead      = [[HEAP]],
      footprintX       = 3,
      footprintZ       = 3,
      object           = [[tarantula_dead.s3o]],
    },

    HEAP  = {
      blocking         = false,
      footprintX       = 3,
      footprintZ       = 3,
      object           = [[debris3x3a.s3o]],
    },

  },

}

return lowerkeys({ spiderriot = unitDef })
