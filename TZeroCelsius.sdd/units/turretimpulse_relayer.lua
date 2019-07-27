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
  collisionVolumeScales    = [[28 28 28]],
  collisionVolumeType      = [[ellipsoid]],
  collide             = false,
  cruiseAlt           = 140,
  explodeAs           = [[TINY_BUILDINGEX]],
  floater             = true,
  footprintX          = 2,
  footprintZ          = 2,
  hoverAttack         = true,
  iconType            = [[smallgunship]],
  idleAutoHeal        = 5,
  idleTime            = 300,
  maneuverleashlength = [[600]],
  maxDamage           = 290,
  maxVelocity         = 4.44,
  minCloakDistance    = 75,
  noAutoFire          = false,
  noChaseCategory     = [[TERRAFORM FIXEDWING GUNSHIP SATELLITE SUB]],
  objectName          = [[carrydrone.s3o]],
  reclaimable         = false,
  script              = [[turretimpulse_relayer.lua]],
  selfDestructAs      = [[TINY_BUILDINGEX]],
  
  customParams        = {
	is_drone = 1,
	modelradius    = [[16]],
  },
  
  
  sfxtypes            = {

    explosiongenerators = {
      [[custom:brawlermuzzle]],
      [[custom:emg_shells_m]],
    },

  },
  sightDistance       = 270,
  turnRate            = 880,
  upright             = true,

  weapons             = {

    {
      def                = [[SLOWBEAM]],
      badTargetCategory  = [[FIXEDWING GUNSHIP]],
      mainDir            = [[0 0 1]],
      maxAngleDif        = 120,
      onlyTargetCategory = [[FIXEDWING LAND SINK TURRET SHIP SWIM FLOAT GUNSHIP HOVER]],
    },

  },


  weaponDefs          = {

    SLOWBEAM = {
      name                    = [[Slowing Beam]],
      areaOfEffect            = 8,
      beamDecay               = 0.9,
      beamTime                = 0.1,
      beamttl                 = 30,
      coreThickness           = 0,
      craterBoost             = 0,
      craterMult              = 0,
	  accuracy				  = 600,
	  collideFriendly         = false,
	  
      customparams = {
        timeslow_damagefactor = 2,
        timeslow_smartretarget = 0.33,
        timeslow_smartretargethealth = 50,
		
		setunitsonfire = "1",
		burntime = 16,
		
		light_camera_height = 1800,
		light_color = [[0.75 0.15 0.55]],
		light_radius = 130,
      },

      damage                  = {
        default = 26.6,
      },

      explosionGenerator      = [[custom:flashslow]],
      fireStarter             = 200,
      impactOnly              = true,
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      interceptedByShieldType = 1,
      largeBeamLaser          = true,
      laserFlareSize          = 4,
      minIntensity            = 1,
      noSelfDamage            = true,
      range                   = 210,
      reloadtime              = 0.92,
      rgbColor                = [[0.64 0.05 0.33]],
      soundStart              = [[weapon/laser/pulse_laser2]],
      soundStartVolume        = 25,
      soundTrigger            = true,
      sweepfire               = false,
      texture1                = [[largelaser]],
      texture2                = [[flare]],
      texture3                = [[flare]],
      texture4                = [[smallflare]],
      thickness               = 4,
      tolerance               = 24000,
      turret                  = true,
      weaponType              = [[BeamLaser]],
      weaponVelocity          = 500,
    },
  },

}

return lowerkeys({ dronenewton = unitDef })
