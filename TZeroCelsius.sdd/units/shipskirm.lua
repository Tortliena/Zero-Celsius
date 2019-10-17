unitDef = {
  unitname               = [[shipskirm]],
  name                   = [[Mistral]],
  description            = [[Rocket Boat (Skirmisher)]],
  acceleration           = 0.058,
  activateWhenBuilt      = true,
  brakeRate              = 0.172,
  buildCostMetal         = 160,
  builder                = false,
  buildPic               = [[shipskirm.png]],
  canGuard               = true,
  canMove                = true,
  canPatrol              = true,
  category               = [[SHIP]],
  collisionVolumeOffsets = [[0 2 0]],
  collisionVolumeScales  = [[24 24 60]],
  collisionVolumeType    = [[cylZ]],
  corpse                 = [[DEAD]],

  customParams           = {
	turnatfullspeed = [[1]],
    modelradius     = [[24]],
	reload_move_penalty = 0.66,
  },


  explodeAs              = [[SMALL_UNITEX]],
  floater                = true,
  footprintX             = 3,
  footprintZ             = 3,
  iconType               = [[shipskirm]],
  idleAutoHeal           = 5,
  idleTime               = 1800,
  losEmitHeight          = 30,
  maxDamage              = 450,
  maxVelocity            = 3.8,
  minCloakDistance       = 320,
  minWaterDepth          = 10,
  movementClass          = [[BOAT3]],
  noAutoFire             = false,
  noChaseCategory        = [[TERRAFORM SATELLITE SUB]],
  objectName             = [[shipskirm.s3o]],
  script		         = [[shipskirm.lua]],
  selfDestructAs         = [[SMALL_UNITEX]],
  sfxtypes               = {

    explosiongenerators = {
      [[custom:MISSILE_EXPLOSION]],
      [[custom:MEDMISSILE_EXPLOSION]],
    },

  },

  sightDistance          = 530,
  sonarDistance          = 530,
  turninplace            = 0,
  turnRate               = 600,
  waterline              = 4,
  workerTime             = 0,

  weapons                = {

	{
      def                = [[ROCKET]], 
	  badTargetCategory	 = [[FIXEDWING GUNSHIP]],
      onlyTargetCategory = [[FIXEDWING LAND SINK TURRET SHIP SWIM FLOAT GUNSHIP HOVER]],
    },
	
  },


  weaponDefs             = {

     ROCKET = {
      name                    = [[Unguided Rocket]],
      areaOfEffect            = 64,
	  --burst                   = 2,
	 -- burstRate               = 1,
	  --projectiles             = 2,
      cegTag                  = [[missiletrailred]],
      craterBoost             = 0.5,
      craterMult              = 1.5,
	  collideFriendly         = false,
	  avoidFriendly           = false,

      customParams        = {
		light_camera_height = 1800,
      },
	  
      damage                  = {
        default = 85.1,
        planes  = 85.1,
        subs    = 8.5,
      },

	  edgeEffectiveness       = 0.1,
      fireStarter             = 50,
      flightTime              = 2,
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      interceptedByShieldType = 2,
      model                   = [[wep_m_hailstorm.s3o]],
      noSelfDamage            = true,
      range                   = 450,
      reloadtime              = 1.25,
      smokeTrail              = true,
      soundHit                = [[explosion/ex_med4]],
      soundHitVolume          = 6,
      soundStart              = [[weapon/missile/missile2_fire_bass]],
      soundStartVolume        = 6,
      startVelocity           = 60,
	  weaponAcceleration      = 400,
      texture2                = [[darksmoketrail]],
      tracks                  = false,
      trajectoryHeight        = 0.33,
      turnrate                = 5000,
      turret                  = true,
      weaponType              = [[MissileLauncher]],
      weaponVelocity          = 460,
	  dance                   = 13,
	  wobble                  = 4800,
    },

  },


  featureDefs            = {

    DEAD = {
      blocking         = false,
      featureDead      = [[HEAP]],

      footprintX       = 2,
      footprintZ       = 2,
      object           = [[shipskirm_dead.s3o]],
    },


    HEAP = {
      blocking         = false,

      footprintX       = 2,
      footprintZ       = 2,
      object           = [[debris2x2c.s3o]],
    },

  },

}

return lowerkeys({ shipskirm = unitDef })
