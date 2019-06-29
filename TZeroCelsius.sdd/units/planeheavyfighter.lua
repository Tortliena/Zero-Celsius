unitDef = {
  unitname               = [[planeheavyfighter]],
  name                   = [[Raptor]],
  description            = [[Air Superiority Fighter]],
  brakerate              = 0.4,
  buildCostMetal         = 330,
  buildPic               = [[planeheavyfighter.png]],
  canFly                 = true,
  canGuard               = true,
  canMove                = true,
  canPatrol              = true,
  canSubmerge            = false,
  category               = [[FIXEDWING]],
  collide                = false,
  collisionVolumeOffsets = [[0 0 5]],
  collisionVolumeScales  = [[30 12 50]],
  collisionVolumeType    = [[box]],
  selectionVolumeOffsets = [[0 0 10]],
  selectionVolumeScales  = [[60 60 80]],
  selectionVolumeType    = [[cylZ]],
  corpse                 = [[DEAD]],
  crashDrag              = 0.01,
  cruiseAlt              = 220,

  customParams           = {
    midposoffset   = [[0 3 0]],
    aimposoffset   = [[0 3 0]],
	modelradius    = [[10]],
	refuelturnradius = [[120]],

    --Kept but put at 1.0 because it otherwise throws an error.
	combat_slowdown = 1.0,
	selection_scale = 1.4,
  },

  explodeAs              = [[GUNSHIPEX]],
  fireState              = 2,
  floater                = true,
  footprintX             = 2,
  footprintZ             = 2,
  frontToSpeed           = 0.1,
  iconType               = [[stealthfighter]],
  idleAutoHeal           = 5,
  idleTime               = 1800,
  maxAcc                 = 0.6,
  maxDamage              = 1270,
  maxRudder              = 0.006,
  maxVelocity            = 8.8,
  minCloakDistance       = 75,
  mygravity              = 1,
  noChaseCategory        = [[TERRAFORM LAND SINK TURRET SHIP SWIM FLOAT SUB HOVER]],
  objectName             = [[fighter2.s3o]],
  script                 = [[planeheavyfighter.lua]],
  selfDestructAs         = [[GUNSHIPEX]],
  sightDistance          = 750,
  speedToFront           = 0.5,
  turnRadius             = 80,

  weapons                = {

	{
      def                = [[MISSILE]],
      badTargetCategory  = [[GUNSHIP]],
      onlyTargetCategory = [[FIXEDWING GUNSHIP]],
    },


  },


  weaponDefs             = {

	MISSILE = {
      name                    = [[Guided Missiles]],
      areaOfEffect            = 12,
      avoidFriendly           = true,
      canattackground         = false,
      cegTag                  = [[missiletrailblue]],
      collideFriendly         = false,
      craterBoost             = 0,
      craterMult              = 0,
      cylinderTargeting       = 6,
	  burst					  = 2,
	  burstRate				  = 0.25,

	  customParams        	  = {
		burst = Shared.BURST_RELIABLE,

		isaa = [[1]],
		light_color = [[0.5 0.6 0.6]],
	  },

      damage                  = {
        default = 33.1,
        planes  = 330.1,
        subs    = 33.1,
      },

      explosionGenerator      = [[custom:WEAPEXP_PUFF]],
      fireStarter             = 70,
      flightTime              = 3,
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      interceptedByShieldType = 2,
      metalpershot            = 0,
      model                   = [[wep_m_fury.s3o]],
      noSelfDamage            = true,
      range                   = 550,
      reloadtime              = 5,
      smokeTrail              = true,
      soundHit                = [[weapon/missile/rocket_hit]],
      soundStart              = [[weapon/missile/missile_fire7]],
      startVelocity           = 200,
      texture2                = [[AAsmoketrail]],
      tolerance               = 22000,
      tracks                  = true,
      turnRate                = 42000,
      weaponAcceleration      = 550,
      weaponType              = [[MissileLauncher]],
      weaponVelocity          = 750,
    },

  },


  featureDefs            = {

    DEAD = {
      blocking         = true,
      featureDead      = [[HEAP]],
      footprintX       = 2,
      footprintZ       = 2,
      object           = [[fighter2_dead.s3o]],
    },


    HEAP = {
      blocking         = false,
      footprintX       = 2,
      footprintZ       = 2,
      object           = [[debris2x2b.s3o]],
    },

  },

}

return lowerkeys({ planeheavyfighter = unitDef })
