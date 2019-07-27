unitDef = {
  unitname               = [[subtacmissile]],
  name                   = [[Scylla]],
  description            = [[Tactical Nuke Missile Sub, Drains 20 m/s, 30 second stockpile]],
  acceleration           = 0.0372,
  activateWhenBuilt      = true,
  brakeRate              = 0.1942,
  buildCostMetal         = 3000,
  builder                = false,
  buildPic               = [[subtacmissile.png]],
  canGuard               = true,
  canMove                = true,
  canPatrol              = true,
  category               = [[SUB SINK]],
  collisionVolumeOffsets = [[0 -5 0]],
  collisionVolumeScales  = [[30 25 110]],
  collisionVolumeType    = [[box]],
  corpse                 = [[DEAD]],

  customParams           = {
	modelradius    = [[15]],
	stockpiletime  = [[180]],
	stockpilecost  = [[1800]],
	priority_misc  = 1, -- Medium
  },

  explodeAs              = [[BIG_UNITEX]],
  fireState              = 0,
  footprintX             = 3,
  footprintZ             = 3,
  iconType               = [[subtacmissile]],
  idleAutoHeal           = 5,
  idleTime               = 1800,
  maxDamage              = 3000,
  maxVelocity            = 2.75,
  minCloakDistance       = 75,
  minWaterDepth          = 15,
  movementClass          = [[UBOAT3]],
  moveState              = 0,
  noAutoFire             = false,
  objectName             = [[SUBTACMISSILE]],
  selfDestructAs         = [[BIG_UNITEX]],
  script                 = [[subtacmissile.lua]],
  sightDistance          = 660,
  sonarDistance          = 660,
  turninplace            = 0,
  turnRate               = 307,
  upright                = true,
  waterline              = 25,
  workerTime             = 0,

  weapons                = {
    --{
    --  def = [[SUB_AMD_ROCKET]],
    --},

    {
      def                = [[CRBLMSSL]],
      badTargetCategory  = [[SWIM LAND SUB SHIP HOVER]],
      onlyTargetCategory = [[SWIM LAND SUB SINK TURRET FLOAT SHIP HOVER]],
    },

  },

  weaponDefs             = {

    SUB_AMD_ROCKET = {
      name                    = [[Anti-Nuke Missile]],
      areaOfEffect            = 420,
      collideFriendly         = false,
      coverage                = 1500,
      craterBoost             = 1,
      craterMult              = 2,

      damage                  = {
        default = 1500,
        subs    = 75,
      },

      explosionGenerator      = [[custom:ANTINUKE]],
      fireStarter             = 100,
      flightTime              = 15,
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      interceptedByShieldType = 1,
      interceptor             = 1,
      model                   = [[antinukemissile.s3o]],
      noSelfDamage            = true,
      range                   = 3000,
      reloadtime              = 12,
      smokeTrail              = true,
      soundHit                = [[weapon/missile/vlaunch_hit]],
      soundStart              = [[weapon/missile/missile_launch]],
      startVelocity           = 400,
      tolerance               = 4000,
      tracks                  = true,
      turnrate                = 65535,
      waterWeapon             = true,
      weaponAcceleration      = 400,
      weaponTimer             = 1,
      weaponType              = [[StarburstLauncher]],
      weaponVelocity          = 1300,
    },

	--Taken from staticnuke.lua.
    CRBLMSSL = {
      name                    = [[Strategic Nuclear Missile]],
      areaOfEffect            = 1820,
      cegTag                  = [[NUCKLEARMINI]],
      collideFriendly         = false,
      collideFeature          = false,
      commandfire             = true,
      craterBoost             = 3,
      craterMult              = 3,

	  customParams        	  = {
		restrict_in_widgets = 1,

		light_color = [[2.9 2.62 1.74]],
		light_radius = 2550,
	  },

      damage                  = {
        default = 4250.1,
      },

      edgeEffectiveness       = 0.01,
      explosionGenerator      = [[custom:LONDON_FLAT]],      -- note, spawning of the explosion is handled by exp_nuke_effect_chooser.lua 
      fireStarter             = 0,
      flightTime              = 180,
      impulseBoost            = 0.5,
      impulseFactor           = 0.24,
      interceptedByShieldType = 65,
      model                   = [[crblmsslr.s3o]],
      noSelfDamage            = false,
      range                   = 2800,
      reloadtime              = 10,
      smokeTrail              = false,
      soundHit                = [[explosion/ex_ultra8]],
      startVelocity           = 800,
      stockpile               = true,
      stockpileTime           = 10^5,
      targetable              = 1,
      texture1                = [[null]], --flare
      tolerance               = 4000,
	  waterWeapon             = true,
      weaponAcceleration      = 0,
      weaponTimer             = 10,
      weaponType              = [[StarburstLauncher]],
      weaponVelocity          = 800,
    },

  },

  featureDefs            = {

    DEAD  = {
      blocking         = false,
      featureDead      = [[HEAP]],
      footprintX       = 3,
      footprintZ       = 3,
      object           = [[subtacmissile_dead.s3o]],
	  collisionVolumeOffsets = [[0 -5 0]],
	  collisionVolumeScales  = [[30 25 110]],
	  collisionVolumeType    = [[box]],
    },

    HEAP  = {
      blocking         = false,
      footprintX       = 4,
      footprintZ       = 4,
      object           = [[debris4x4c.s3o]],
    },

  },

}

return lowerkeys({ subtacmissile = unitDef })
