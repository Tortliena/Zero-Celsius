unitDef = {
  unitname                      = [[turretimpulse]],
  name                          = [[Newton]],
  description                   = [[Gravity Turret]],
  activateWhenBuilt             = true,
  buildCostMetal                = 250,
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
  maxDamage                     = 2000,
  maxSlope                      = 36,
  maxWaterDepth                 = 0,
  minCloakDistance              = 150,
  noAutoFire                    = false,
  noChaseCategory               = [[FIXEDWING LAND SINK TURRET SHIP SATELLITE SWIM GUNSHIP FLOAT SUB HOVER]],
  objectName                    = [[CORGRAV]],
  onoffable                     = true,
  selfDestructAs                = [[MEDIUM_BUILDINGEX]],
  sightDistance                 = 506,
  useBuildingGroundDecal        = true,
  workerTime                    = 0,
  yardMap                       = [[oooo]],

  weapons                       = {

    {
      def                = [[GRAVITY_POS]],
      badTargetCategory  = [[]],
      onlyTargetCategory = [[FIXEDWING HOVER SWIM LAND SHIP GUNSHIP]],
    },


    {
      def                = [[GRAVITY_NEG]],
      badTargetCategory  = [[]],
      onlyTargetCategory = [[FIXEDWING HOVER SWIM LAND SHIP GUNSHIP]],
    },
	
	--{ --Missile interceptor laser. TTODO need to determine which weapons are actually destructible by the laser.
      --def                = [[LASER]],
    --},

  },


  weaponDefs                    = {

    GRAVITY_NEG = {
      name                    = [[Attractive Gravity]],
      areaOfEffect            = 8,
      avoidFriendly           = false,
      coreThickness           = 0.5,
      craterBoost             = 0,
      craterMult              = 0,

      customParams            = {
        reaim_time = 8, -- COB
        impulse = [[-4500]],

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
      range                   = 460,
      reloadtime              = 1,
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


    GRAVITY_POS = { --Actually heavy and slow-firing disruptor weapon. TTODO, add a toggle.
      name                    = [[Newton+ Disruption Cannon]],
      accuracy                = 200,
      areaOfEffect            = 280,
      cegTag                  = [[beamweapon_muzzle_purple]],
      craterBoost             = 0,
      craterMult              = 0,

      customparams = {
		burst = Shared.BURST_RELIABLE,

        timeslow_damagefactor = 5,
		
		light_camera_height = 2500,
		light_color = [[1.36 0.68 1.5]],
		light_radius = 180,
      },

      damage                  = {
        default = 65.1,
        subs    = 65.1,
      },

      edgeeffectiveness       = 0.05,
      explosionGenerator      = [[custom:flash64]],
	  explosionSpeed          = 13,
      fireStarter             = 0.0,
      impactOnly              = false,
      impulseBoost            = 1,
      impulseFactor           = 25,
      interceptedByShieldType = 2,
      myGravity               = 0.33,
      range                   = 460,
      reloadtime              = 3.2,
      rgbcolor                = [[0.9 0.1 0.9]],
      soundHit                = [[weapon/laser/heavy_disrupter_hit]],
      soundHitVolume          = 1.5,
      soundStart              = [[weapon/laser/small_laser_fire3]],
      soundStartVolume        = 3.5,
      soundTrigger            = true,
      turret                  = true,
      weaponType              = [[Cannon]],
      weaponVelocity          = 600,
	  
    },
	
	LASER = {
      name                    = [[Laserbeam]],
      areaOfEffect            = 8,
      beamTime                = 0.1,
      coreThickness           = 0.4,
      craterBoost             = 0,
      craterMult              = 0,

	  customparams = {
		stats_hide_damage = 1, -- Anti-missile
		stats_hide_reload = 1,
		
		light_color = [[0.4 1.1 1.1]],
		light_radius = 120,
	  },

      damage                  = {
        default = 1.1,
        subs    = 1.1,
      },

      duration                = 0.1,
      explosionGenerator      = [[custom:FLASH1blue]],
      fireStarter             = 30,
      impactOnly              = true,
      impulseBoost            = 0,
      impulseFactor           = 0,
      interceptor             = 2,
	  coverage                = 400,
      interceptedByShieldType = 1,
      largeBeamLaser          = true,
      laserFlareSize          = 3,
      minIntensity            = 1.5,
      noSelfDamage            = true,
      range                   = 400,
      reloadtime              = 1.5,
      rgbColor                = [[0 1 1]],
      soundStart              = [[weapon/gravity_fire]],
      soundTrigger            = true,
      sweepfire               = false,
      texture1                = [[largelaser]],
      texture2                = [[flare]],
      texture3                = [[flare]],
      texture4                = [[smallflare]],
      thickness               = 2,
      tolerance               = 5000,
      turret                  = true,
      weaponType              = [[BeamLaser]],
      weaponVelocity          = 500,
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
