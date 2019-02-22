unitDef = {
  unitname                      = [[turretimpulse]],
  name                          = [[Nest]],
  description                   = [[Drone turret]],
  activateWhenBuilt             = true,
  buildCostMetal                = 110,
  builder                       = false,
  buildingGroundDecalDecaySpeed = 30,
  buildingGroundDecalSizeX      = 4,
  buildingGroundDecalSizeY      = 4,
  buildingGroundDecalType       = [[turretimpulse_aoplane.dds]],
  buildPic                      = [[turretimpulse.png]],
  category                      = [[SINK]],
  collisionVolumeOffsets        = [[0 0 0]],
  collisionVolumeScales         = [[50 50 50]],
  collisionVolumeType           = [[ellipsoid]],
  corpse                        = [[DEAD]],

  customParams                  = {
    modelradius    = [[25]],
  },

  explodeAs                     = [[MEDIUM_BUILDINGEX]],
  footprintX                    = 2,
  footprintZ                    = 2,
  iconType                      = [[defensesupport]],
  levelGround                   = false,
  maxDamage                     = 750,
  maxSlope                      = 36,
  maxWaterDepth                 = 0,
  minCloakDistance              = 150,
  noAutoFire                    = false,
  noChaseCategory               = [[FIXEDWING LAND SINK TURRET SHIP SATELLITE SWIM GUNSHIP FLOAT SUB HOVER]],
  objectName                    = [[CORGRAV]],
  onoffable                     = false,
  selfDestructAs                = [[SMALL_BUILDINGEX]],
  sightDistance                 = 500,
  useBuildingGroundDecal        = true,
  workerTime                    = 0,
  yardMap                       = [[oooo]],

  weapons                       = {
	--No weapons apart from a fake one, its drone newton does the attack (turretimpulse_relayer).
	{
      def                = [[BOGUS_FAKE_TARGETER]],
      badTargetCategory  = [[FIXEDWING GUNSHIP]],
      onlyTargetCategory = [[FIXEDWING LAND SINK TURRET SHIP SWIM FLOAT GUNSHIP HOVER]],
	  
    },

  },

  weaponDefs                    = {

	  BOGUS_FAKE_TARGETER = {
      name                    = [[Bogus Fake Targeter]],
      avoidGround             = false, -- avoid nothing, else attempts to move out to clear line of fine
      avoidFriendly           = false,
      avoidFeature            = false,
      avoidNeutral            = false,

      damage                  = {
        default = 11.34,
        planes  = 11.34,
        subs    = 0.567,
      },

      explosionGenerator      = [[custom:FLASHPLOSION]],
      noSelfDamage            = true,
      range                   = 680,
      reloadtime              = 1,
      tolerance               = 5000,
      turret                  = true,
      weaponType              = [[StarburstLauncher]],
      weaponVelocity          = 500,
    },
	
    GRAVITY_NEG = {
      name                    = [[Attractive Gravity]],
      areaOfEffect            = 8,
      avoidFriendly           = false,
      burst                   = 6,
      burstrate               = 0.01,
      coreThickness           = 0.5,
      craterBoost             = 0,
      craterMult              = 0,

      customParams            = {
        reaim_time = 8, -- COB
        impulse = [[-150]],

        light_color = [[0.33 0.33 1.28]],
        light_radius = 140,
      },

      damage                  = {
        default = 0.001,
        planes  = 0.001,
        subs    = 5E-05,
      },

      duration                = 0.0333,
      explosionGenerator      = [[custom:NONE]],
      impactOnly              = true,
      intensity               = 0.7,
      interceptedByShieldType = 0,
      noSelfDamage            = true,
      proximityPriority       = -15,
      range                   = 1,
      reloadtime              = 0.2,
      rgbColor                = [[0 0 1]],
      rgbColor2               = [[1 0.5 1]],
      size                    = 2,
      soundStart              = [[weapon/gravity_fire]],
      soundTrigger            = true,
      thickness               = 4,
      tolerance               = 5000,
      turret                  = true,
      weaponType              = [[LaserCannon]],
      weaponVelocity          = 2200,
    },


    GRAVITY_POS = {
      name                    = [[Repulsive Gravity]],
      areaOfEffect            = 8,
      avoidFriendly           = false,
      burst                   = 6,
      burstrate               = 0.01,
      coreThickness           = 0.5,
      craterBoost             = 0,
      craterMult              = 0,

      customParams            = {
        reaim_time = 8, -- COB
        impulse = [[150]],

        light_color = [[0.85 0.2 0.2]],
        light_radius = 140,
      },

      damage                  = {
        default = 0.001,
        planes  = 0.001,
        subs    = 5E-05,
      },

      duration                = 0.0333,
      explosionGenerator      = [[custom:NONE]],
      impactOnly              = true,
      intensity               = 0.7,
      interceptedByShieldType = 0,
      noSelfDamage            = true,
      proximityPriority       = 15,
      range                   = 1,
      reloadtime              = 0.2,
      rgbColor                = [[1 0 0]],
      rgbColor2               = [[1 0.5 1]],
      size                    = 2,
      soundStart              = [[weapon/gravity_fire]],
      soundTrigger            = true,
      thickness               = 4,
      tolerance               = 5000,
      turret                  = true,
      weaponType              = [[LaserCannon]],
      weaponVelocity          = 2200,
    },

  },


  featureDefs                   = {

    DEAD  = {
      blocking         = true,
      featureDead      = [[HEAP]],
      footprintX       = 5,
      footprintZ       = 5,
      object           = [[corgrav_dead]],
    },

    HEAP  = {
      blocking         = false,
      footprintX       = 5,
      footprintZ       = 5,
      object           = [[debris3x3c.s3o]],
    },

  },

}

return lowerkeys({ turretimpulse = unitDef })
