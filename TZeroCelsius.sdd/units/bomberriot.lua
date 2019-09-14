unitDef = {
  unitname            = [[bomberriot]],
  name                = [[Phoenix]],
  description         = [[Saturation Napalm Bomber]],
  brakerate           = 0.4,
  buildCostMetal      = 380,
  builder             = false,
  buildPic            = [[bomberriot.png]],
  canFly              = true,
  canGuard            = true,
  canMove             = true,
  canPatrol           = true,
  canSubmerge         = false,
  category            = [[FIXEDWING]],
  collide             = false,
  collisionVolumeOffsets = [[0 0 -5]],
  collisionVolumeScales  = [[55 15 70]],
  collisionVolumeType    = [[box]],
  selectionVolumeOffsets = [[0 0 0]],
  selectionVolumeScales  = [[80 25 80]],
  selectionVolumeType    = [[cylY]],
  corpse              = [[DEAD]],
  cruiseAlt           = 180,

  customParams        = {
	modelradius    = [[10]],
	refuelturnradius = [[120]],
	requireammo    = [[1]],
  },

  explodeAs           = [[GUNSHIPEX]],
  floater             = true,
  footprintX          = 4,
  footprintZ          = 4,
  iconType            = [[bomberraider]],
  idleAutoHeal        = 5,
  idleTime            = 1900,
  maxAcc              = 0.5,
  maxDamage           = 1900,
  maxAileron          = 0.012,
  maxElevator         = 0.013,
  maxRudder           = 0.005,
  maxFuel             = 1000000,
  maxVelocity         = 7.9,
  minCloakDistance    = 75,
  noAutoFire          = false,
  noChaseCategory     = [[TERRAFORM FIXEDWING GUNSHIP SUB]],
  objectName          = [[firestorm.s3o]],
  script			  = [[bomberriot.lua]],
  selfDestructAs      = [[GUNSHIPEX]],

  sfxtypes            = {

    explosiongenerators = {
      [[custom:BEAMWEAPON_MUZZLE_RED]],
      [[custom:light_red]],
      [[custom:light_green]],
    },

  },
  sightDistance       = 660,
  turnRadius          = 133,
  workerTime          = 0,

  weapons             = {

    {
      def                = [[NAPALM]],
      badTargetCategory  = [[SWIM LAND SHIP HOVER GUNSHIP]],
      onlyTargetCategory = [[SWIM LAND SINK TURRET FLOAT SHIP HOVER GUNSHIP]],
    },

  },


  weaponDefs          = {

    NAPALM = {
      name                    = [[Napalm Bombs]],
      areaOfEffect            = 192,
      avoidFeature            = false,
      avoidFriendly           = false,
      burst                   = 24,
      burstrate               = 0.1,
      collideFeature          = false,
      collideFriendly         = false,
      craterBoost             = 0,
      craterMult              = 0,

	  customParams        	  = {
        reaim_time = 15, -- Fast update not required (maybe dangerous)
	    setunitsonfire = "1",
		burntime = 300,
		
		area_damage = 1,
		area_damage_radius = 48,
		area_damage_dps = 20,
		area_damage_duration = 21,
	  },
	  
      damage                  = {
        default = 20,
        planes  = 20,
        subs    = 2.0,
      },

      edgeEffectiveness       = 0.6,
      explosionGenerator      = [[custom:napalm_firewalker_small]],
      fireStarter             = 250,
      impulseBoost            = 0,
      impulseFactor           = 0.1,
      interceptedByShieldType = 1,
      model                   = [[wep_b_fabby.s3o]],
      myGravity               = 0.7,
      noSelfDamage            = true,
      reloadtime              = 1,
      soundHit                = [[weapon/burn_mixed]],
      soundStart              = [[weapon/bomb_drop_short]],
      sprayangle              = 92000,
      weaponType              = [[AircraftBomb]],
    },

  },


  featureDefs         = {

    DEAD  = {
      blocking         = true,
      featureDead      = [[HEAP]],
      footprintX       = 2,
      footprintZ       = 2,
      object           = [[firestorm_dead.s3o]],
    },

    HEAP  = {
      blocking         = false,
      footprintX       = 2,
      footprintZ       = 2,
      object           = [[debris3x3c.s3o]],
    },

  },

}

return lowerkeys({ bomberriot = unitDef })
