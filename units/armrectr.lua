unitDef = {
  unitname               = [[armrectr]],
  name                   = [[Rector]],
  description            = [[Cloaking Construction Bot, Builds at 5 m/s]],
  acceleration           = 0.5,
  activateWhenBuilt      = true,
  brakeRate              = 0.5,
  buildCostEnergy        = 140,
  buildCostMetal         = 140,
  buildDistance          = 90,
  builder                = true,

  buildoptions           = {
  },

  buildPic               = [[ARMRECTR.png]],
  buildTime              = 140,
  canAssist              = true,
  canBuild               = true,
  canMove                = true,
  canPatrol              = true,
  canreclamate           = [[1]],
  canstop                = [[1]],
  category               = [[LAND UNARMED]],
  cloakCost              = 0.1,
  cloakCostMoving        = 0.5,
  collisionVolumeOffsets = [[0 0 0]],
  collisionVolumeScales  = [[34 51 34]],
  collisionVolumeType    = [[ellipsoid]],
  corpse                 = [[DEAD]],

  customParams           = {
    description_bp = [[Robô de contru??o e captura, constrói a 5 m/s]],
    description_de = [[Getarnter Konstruktionsroboter, Baut mit 5 M/s]],
    description_es = [[Robot de Construccion/Captura, Construye a 5 m/s]],
    description_fi = [[Rakentaja/kaappaajarobotti, rakentaa 5m/s  nopeudella]],
    description_fr = [[Robot de Construction/Capture, Construit ? 5 m/s]],
    description_it = [[Robot da Costruzzione/Cattura, Costruisce a 5 m/s]],
    description_pl = [[Bot Konstruktor z Maskowaniem, moc 5 m/s]],
    helptext       = [[The Rector packs a short-ranged jammer and a cloaking device for stealthy expansion and base maintenance.]],
    helptext_bp    = [[]],
    helptext_fi    = [[Pystyy rakentamisen lis?ksi kaappaamaan yksik?t koodaamalla ne nurin.]],
    helptext_fr    = [[]],
    helptext_de    = [[Der Rector besitzt einen Störsender mit kurzer Reichweite und ein Tarngerät, um geheim und unerkannt expandieren zu können.]],
    helptext_pl    = [[Rector może się maskować i ma zakłócacz radaru bardzo krótkiego zasięgu, co pozwala mu pracować w ukryciu.]],
  },

  energyMake             = 0.15,
  explodeAs              = [[BIG_UNITEX]],
  footprintX             = 2,
  footprintZ             = 2,
  iconType               = [[builder]],
  idleAutoHeal           = 5,
  idleTime               = 1800,
  initCloaked            = true,
  leaveTracks            = true,
  maxDamage              = 450,
  maxSlope               = 36,
  maxVelocity            = 1.9,
  maxWaterDepth          = 22,
  metalMake              = 0.15,
  minCloakDistance       = 75,
  movementClass          = [[KBOT2]],
  objectName             = [[spherecon.s3o]],
  radarDistanceJam       = 256,
  seismicSignature       = 4,
  selfDestructAs         = [[BIG_UNITEX]],
  showNanoSpray          = false,
  sightDistance          = 375,
  trackOffset            = 0,
  trackStrength          = 8,
  trackStretch           = 1,
  trackType              = [[ComTrack]],
  trackWidth             = 18,
  terraformSpeed         = 300,
  turnRate               = 2200,
  upright                = true,
  workerTime             = 5,

  featureDefs            = {

    DEAD  = {
      description      = [[Wreckage - Rector]],
      blocking         = true,
      damage           = 760,
      energy           = 0,
      featureDead      = [[HEAP]],
      footprintX       = 2,
      footprintZ       = 2,
      metal            = 48,
      object           = [[spherejeth_dead.s3o]],
      reclaimable      = true,
      reclaimTime      = 48,
    },

    HEAP  = {
      description      = [[Debris - Rector]],
      blocking         = false,
      damage           = 760,
      energy           = 0,
      footprintX       = 2,
      footprintZ       = 2,
      metal            = 24,
      object           = [[debris2x2c.s3o]],
      reclaimable      = true,
      reclaimTime      = 24,
    },

  },

}

return lowerkeys({ armrectr = unitDef })
