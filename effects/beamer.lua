-- beamerray

return {
  ["beamerray"] = {
    usedefaultexplosions = false,
    groundflash = {
      circlealpha        = 0,
      circlegrowth       = 1,
      flashalpha         = 1.0,
      flashsize          = 26,
      ttl                = 24,
      color = {
        [1]  = 0,
        [2]  = 0,
        [3]  = 1,
      },
    },
    meltage = {
      air                = true,
      class              = [[CExpGenSpawner]],
      count              = 1,
      ground             = true,
      water              = true,
      properties = {
        delay              = 0,
        explosiongenerator = [[custom:LASERS_MELT1]],
        pos                = [[0, 0, 0]],
      },
    },
    pikes = {
      air                = true,
      class              = [[explspike]],
      count              = 5,
      ground             = true,
      water              = true,
      properties = {
        alpha              = 1,
        alphadecay         = 0.06,
        color              = [[0.2,0.2,1]],
        dir                = [[-2 r4,-2 r4,-2 r4]],
        length             = 11,
        width              = 7,
      },
    },
    sparks_yellow = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      water              = true,
      properties = {
        airdrag            = 0.97,
        colormap           = [[1 1 0 0.01   1 0.7 0.5 0.01   0 0 0 0.01]],
        directional        = true,
        emitrot            = 0,
        emitrotspread      = 80,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, -0.4, 0]],
        numparticles       = 5,
        particlelife       = 15,
        particlelifespread = 0,
        particlesize       = 1,
        particlesizespread = 2.5,
        particlespeed      = 3,
        particlespeedspread = 2,
        pos                = [[0, 0, 0]],
        sizegrowth         = 0,
        sizemod            = 1.0,
        texture            = [[plasma]],
      },
    },
    sparks_blue = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      water              = true,
      properties = {
        airdrag            = 0.97,
        colormap           = [[0.2 0.2 1.0 0.01   0.1 0.1 0.8 0.01   0 0 0 0.01]],
        directional        = true,
        emitrot            = 0,
        emitrotspread      = 80,
        emitvector         = [[0, 1, 0]],
        gravity            = [[0, -0.1, 0]],
        numparticles       = 5,
        particlelife       = 10,
        particlelifespread = 3,
        particlesize       = 8,
        particlesizespread = 2.5,
        particlespeed      = 4,
        particlespeedspread = 2,
        pos                = [[0, 0, 0]],
        sizegrowth         = 0,
        sizemod            = 1.0,
        texture            = [[plasma]],
      },
    },
  },

}

