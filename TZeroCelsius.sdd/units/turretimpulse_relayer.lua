unitDef = {
  unitname            = [[dronenewton]],
  name                = [[bumblebee]],
  description         = [[dronenewton]],
  acceleration        = 0.3,
  airHoverFactor      = 4,
  brakeRate           = 0.24,
  buildCostMetal      = 15,
  builder             = false,
  buildPic            = [[dronecarry.png]],
  canBeAssisted       = false,
  canFly              = true,
  canGuard            = true,
  canMove             = true,
  canPatrol           = true,
  canSubmerge         = false,
  category            = [[GUNSHIP]],
  collisionVolumeOffsets   = [[0 0 0]],
  collisionVolumeScales    = [[26 26 26]],
  collisionVolumeType      = [[ellipsoid]],
  collide             = false,
  cruiseAlt           = 145,
  explodeAs           = [[TINY_BUILDINGEX]],
  floater             = true,
  footprintX          = 2,
  footprintZ          = 2,
  hoverAttack         = true,
  iconType            = [[smallgunship]],
  idleAutoHeal        = 5,
  idleTime            = 300,
  maneuverleashlength = [[650]],
  maxDamage           = 290,
  maxVelocity         = 3.2,
  minCloakDistance    = 75,
  noAutoFire          = false,
  noChaseCategory     = [[TERRAFORM FIXEDWING SATELLITE SUB]],
  objectName          = [[carrydrone.s3o]],
  reclaimable         = false,
  script              = [[dronecarry.lua]],
  selfDestructAs      = [[TINY_BUILDINGEX]],
  
  customParams        = {
	is_drone = 1,
	modelradius    = [[13]],
  },
  
  
  sfxtypes            = {

    explosiongenerators = {
      [[custom:brawlermuzzle]],
      [[custom:emg_shells_m]],
    },

  },
  sightDistance       = 500,
  turnRate            = 792,
  upright             = true,

  weapons             = {

    {
      def                = [[LASER]],
      badTargetCategory  = [[FIXEDWING GUNSHIP]],
      mainDir            = [[0 0 1]],
      maxAngleDif        = 90,
      onlyTargetCategory = [[FIXEDWING LAND SINK TURRET SHIP SWIM FLOAT GUNSHIP HOVER]],
    },

  },


  weaponDefs          = {

    LASER = {
      name                    = [[Laserbeam]],
      areaOfEffect            = 7,
      beamTime                = 0.1,
      coreThickness           = 0.3,
      craterBoost             = 0,
      craterMult              = 0,
	  accuracy                = 750,				 	

	  customparams = {
		stats_hide_damage = 1, -- continuous laser
		stats_hide_reload = 1,
		
		setunitsonfire = "1",
		burntime = 30,
		
		light_color = [[1 0.36 0.18]],
		light_radius = 90,
	  },

      damage                  = {
        default = 2.5,
        subs    = 0.4,
      },

      explosionGenerator      = [[custom:FLASH1blue]],
      fireStarter             = 25,
      impactOnly              = true,
      impulseBoost            = 0,
      impulseFactor           = 0.5,
      interceptedByShieldType = 1,
      largeBeamLaser          = true,
      laserFlareSize          = 1.4,
      minIntensity            = 1,
      noSelfDamage            = true,
      range                   = 200,
      reloadtime              = 0.1,
      rgbColor                = [[1 0 0]],
      soundStart              = [[weapon/laser/laser_burn8]],
      soundTrigger            = true,
      sweepfire               = true,
      texture1                = [[largelaser]],
      texture2                = [[flare]],
      texture3                = [[flare]],
      texture4                = [[smallflare]],
      thickness               = 1.6,
      tolerance               = 5000,
      turret                  = true,
      weaponType              = [[BeamLaser]],
      weaponVelocity          = 500,
    },
  },

}

return lowerkeys({ dronenewton = unitDef })
