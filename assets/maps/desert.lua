return {
  version = "1.1",
  luaversion = "5.1",
  tiledversion = "0.15.0",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 40,
  height = 40,
  tilewidth = 32,
  tileheight = 32,
  nextobjectid = 55,
  properties = {},
  tilesets = {
    {
      name = "Desert",
      firstgid = 1,
      filename = "desert.tsx",
      tilewidth = 32,
      tileheight = 32,
      spacing = 1,
      margin = 1,
      image = "tileset/tmw_desert_spacing.png",
      imagewidth = 265,
      imageheight = 199,
      tileoffset = {
        x = 0,
        y = 0
      },
      properties = {},
      terrains = {
        {
          name = "Desert",
          tile = 29,
          properties = {}
        },
        {
          name = "Brick",
          tile = 9,
          properties = {}
        },
        {
          name = "Cobblestone",
          tile = 33,
          properties = {}
        },
        {
          name = "Dirt",
          tile = 14,
          properties = {}
        }
      },
      tilecount = 48,
      tiles = {
        {
          id = 0,
          terrain = { 0, 0, 0, 1 }
        },
        {
          id = 1,
          terrain = { 0, 0, 1, 1 }
        },
        {
          id = 2,
          terrain = { 0, 0, 1, 0 }
        },
        {
          id = 3,
          terrain = { 3, 3, 3, 0 }
        },
        {
          id = 4,
          terrain = { 3, 3, 0, 3 }
        },
        {
          id = 5,
          terrain = { 0, 0, 0, 3 }
        },
        {
          id = 6,
          terrain = { 0, 0, 3, 3 }
        },
        {
          id = 7,
          terrain = { 0, 0, 3, 0 }
        },
        {
          id = 8,
          terrain = { 0, 1, 0, 1 }
        },
        {
          id = 9,
          terrain = { 1, 1, 1, 1 }
        },
        {
          id = 10,
          terrain = { 1, 0, 1, 0 }
        },
        {
          id = 11,
          terrain = { 3, 0, 3, 3 }
        },
        {
          id = 12,
          terrain = { 0, 3, 3, 3 }
        },
        {
          id = 13,
          terrain = { 0, 3, 0, 3 }
        },
        {
          id = 14,
          terrain = { 3, 3, 3, 3 }
        },
        {
          id = 15,
          terrain = { 3, 0, 3, 0 }
        },
        {
          id = 16,
          terrain = { 0, 1, 0, 0 }
        },
        {
          id = 17,
          terrain = { 1, 1, 0, 0 }
        },
        {
          id = 18,
          terrain = { 1, 0, 0, 0 }
        },
        {
          id = 19,
          terrain = { 1, 1, 1, 0 }
        },
        {
          id = 20,
          terrain = { 1, 1, 0, 1 }
        },
        {
          id = 21,
          terrain = { 0, 3, 0, 0 }
        },
        {
          id = 22,
          terrain = { 3, 3, 0, 0 }
        },
        {
          id = 23,
          terrain = { 3, 0, 0, 0 }
        },
        {
          id = 24,
          terrain = { 0, 0, 0, 2 }
        },
        {
          id = 25,
          terrain = { 0, 0, 2, 2 }
        },
        {
          id = 26,
          terrain = { 0, 0, 2, 0 }
        },
        {
          id = 27,
          terrain = { 1, 0, 1, 1 }
        },
        {
          id = 28,
          terrain = { 0, 1, 1, 1 }
        },
        {
          id = 29,
          terrain = { 0, 0, 0, 0 }
        },
        {
          id = 30,
          terrain = { 0, 0, 0, 0 },
          probability = 0.01
        },
        {
          id = 31,
          terrain = { 0, 0, 0, 0 },
          probability = 0.01
        },
        {
          id = 32,
          terrain = { 0, 2, 0, 2 }
        },
        {
          id = 33,
          terrain = { 2, 2, 2, 2 }
        },
        {
          id = 34,
          terrain = { 2, 0, 2, 0 }
        },
        {
          id = 35,
          terrain = { 2, 2, 2, 0 }
        },
        {
          id = 36,
          terrain = { 2, 2, 0, 2 }
        },
        {
          id = 37,
          terrain = { 0, 0, 0, 0 },
          probability = 0.01
        },
        {
          id = 38,
          terrain = { 0, 0, 0, 0 },
          probability = 0.01
        },
        {
          id = 39,
          terrain = { 0, 0, 0, 0 },
          probability = 0.01
        },
        {
          id = 40,
          terrain = { 0, 2, 0, 0 }
        },
        {
          id = 41,
          terrain = { 2, 2, 0, 0 }
        },
        {
          id = 42,
          terrain = { 2, 0, 0, 0 }
        },
        {
          id = 43,
          terrain = { 2, 0, 2, 2 }
        },
        {
          id = 44,
          terrain = { 0, 2, 2, 2 }
        },
        {
          id = 45,
          terrain = { 0, 0, 0, 0 },
          probability = 0
        },
        {
          id = 46,
          terrain = { 0, 0, 0, 0 },
          probability = 0.01
        },
        {
          id = 47,
          terrain = { 0, 0, 0, 0 },
          probability = 0.01
        }
      }
    }
  },
  layers = {
    {
      type = "tilelayer",
      name = "Ground",
      x = 0,
      y = 0,
      width = 40,
      height = 40,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "base64",
      compression = "zlib",
      data = "eJztmNkKwjAQRaN9cAPrAq5Yq3Xf6v9/nSM2VIbQJjEZR+nDwQZScrwztoORECLySBcIgZ7nc2y4KfyWDLx+Jb9nViNgDEwY+KioAXUgQN4+zpoCMwPmQAtoAx2CLFbA2oDEo9+hwG8DnIDtF/2K8ks086Tw2zH0uyMv7HcRr/6/EvvhnsPrsrxwX7rwU/0ODig/eV3mh3N1ld8eraWPaX6+64s9McesfrqcHfg1MpoifxcVEWjukyw+9AtFPl/I71pER3Of6j4bv7HI54s+MChhqLlPdZ/P3qMmFuo5h5NnTOhjM5tReN2yT51n5/v7J3F0vi46fk+ne7aX0i9l6If7mpufTX3f5wsqv9TAD2fJLT9VrTn7UeZnM5tR+v0LMQOHXwFnxe2/warGFRWf8QDjOLfP"
    },
    {
      type = "objectgroup",
      name = "walls",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      objects = {
        {
          id = 6,
          name = "",
          type = "",
          shape = "rectangle",
          x = 352,
          y = 192,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 25,
          visible = true,
          properties = {}
        },
        {
          id = 8,
          name = "",
          type = "",
          shape = "rectangle",
          x = 736,
          y = 480,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 43,
          visible = true,
          properties = {}
        },
        {
          id = 10,
          name = "",
          type = "",
          shape = "rectangle",
          x = 352,
          y = 480,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 41,
          visible = true,
          properties = {}
        },
        {
          id = 11,
          name = "",
          type = "",
          shape = "rectangle",
          x = 736,
          y = 192,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 27,
          visible = true,
          properties = {}
        },
        {
          id = 12,
          name = "",
          type = "",
          shape = "rectangle",
          x = 384,
          y = 192,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 26,
          visible = true,
          properties = {}
        },
        {
          id = 13,
          name = "",
          type = "",
          shape = "rectangle",
          x = 416,
          y = 192,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 26,
          visible = true,
          properties = {}
        },
        {
          id = 14,
          name = "",
          type = "",
          shape = "rectangle",
          x = 448,
          y = 192,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 26,
          visible = true,
          properties = {}
        },
        {
          id = 15,
          name = "",
          type = "",
          shape = "rectangle",
          x = 480,
          y = 192,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 26,
          visible = true,
          properties = {}
        },
        {
          id = 16,
          name = "",
          type = "",
          shape = "rectangle",
          x = 512,
          y = 192,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 26,
          visible = true,
          properties = {}
        },
        {
          id = 17,
          name = "",
          type = "",
          shape = "rectangle",
          x = 544,
          y = 192,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 26,
          visible = true,
          properties = {}
        },
        {
          id = 18,
          name = "",
          type = "",
          shape = "rectangle",
          x = 576,
          y = 192,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 26,
          visible = true,
          properties = {}
        },
        {
          id = 19,
          name = "",
          type = "",
          shape = "rectangle",
          x = 608,
          y = 192,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 26,
          visible = true,
          properties = {}
        },
        {
          id = 20,
          name = "",
          type = "",
          shape = "rectangle",
          x = 640,
          y = 192,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 26,
          visible = true,
          properties = {}
        },
        {
          id = 21,
          name = "",
          type = "",
          shape = "rectangle",
          x = 672,
          y = 192,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 26,
          visible = true,
          properties = {}
        },
        {
          id = 22,
          name = "",
          type = "",
          shape = "rectangle",
          x = 672,
          y = 192,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 26,
          visible = true,
          properties = {}
        },
        {
          id = 23,
          name = "",
          type = "",
          shape = "rectangle",
          x = 704,
          y = 192,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 26,
          visible = true,
          properties = {}
        },
        {
          id = 26,
          name = "",
          type = "",
          shape = "rectangle",
          x = 352,
          y = 224,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 33,
          visible = true,
          properties = {}
        },
        {
          id = 27,
          name = "",
          type = "",
          shape = "rectangle",
          x = 352,
          y = 256,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 33,
          visible = true,
          properties = {}
        },
        {
          id = 28,
          name = "",
          type = "",
          shape = "rectangle",
          x = 352,
          y = 288,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 33,
          visible = true,
          properties = {}
        },
        {
          id = 29,
          name = "",
          type = "",
          shape = "rectangle",
          x = 352,
          y = 320,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 33,
          visible = true,
          properties = {}
        },
        {
          id = 30,
          name = "",
          type = "",
          shape = "rectangle",
          x = 352,
          y = 352,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 33,
          visible = true,
          properties = {}
        },
        {
          id = 31,
          name = "",
          type = "",
          shape = "rectangle",
          x = 352,
          y = 384,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 33,
          visible = true,
          properties = {}
        },
        {
          id = 32,
          name = "",
          type = "",
          shape = "rectangle",
          x = 352,
          y = 416,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 33,
          visible = true,
          properties = {}
        },
        {
          id = 33,
          name = "",
          type = "",
          shape = "rectangle",
          x = 352,
          y = 448,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 33,
          visible = true,
          properties = {}
        },
        {
          id = 35,
          name = "",
          type = "",
          shape = "rectangle",
          x = 384,
          y = 480,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 42,
          visible = true,
          properties = {}
        },
        {
          id = 36,
          name = "",
          type = "",
          shape = "rectangle",
          x = 416,
          y = 480,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 42,
          visible = true,
          properties = {}
        },
        {
          id = 37,
          name = "",
          type = "",
          shape = "rectangle",
          x = 448,
          y = 480,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 42,
          visible = true,
          properties = {}
        },
        {
          id = 38,
          name = "",
          type = "",
          shape = "rectangle",
          x = 480,
          y = 480,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 42,
          visible = true,
          properties = {}
        },
        {
          id = 39,
          name = "",
          type = "",
          shape = "rectangle",
          x = 512,
          y = 480,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 42,
          visible = true,
          properties = {}
        },
        {
          id = 40,
          name = "",
          type = "",
          shape = "rectangle",
          x = 576,
          y = 480,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 42,
          visible = true,
          properties = {}
        },
        {
          id = 41,
          name = "",
          type = "",
          shape = "rectangle",
          x = 544,
          y = 480,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 42,
          visible = true,
          properties = {}
        },
        {
          id = 42,
          name = "",
          type = "",
          shape = "rectangle",
          x = 608,
          y = 480,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 42,
          visible = true,
          properties = {}
        },
        {
          id = 43,
          name = "",
          type = "",
          shape = "rectangle",
          x = 640,
          y = 480,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 42,
          visible = true,
          properties = {}
        },
        {
          id = 44,
          name = "",
          type = "",
          shape = "rectangle",
          x = 672,
          y = 480,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 42,
          visible = true,
          properties = {}
        },
        {
          id = 45,
          name = "",
          type = "",
          shape = "rectangle",
          x = 704,
          y = 480,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 42,
          visible = true,
          properties = {}
        },
        {
          id = 47,
          name = "",
          type = "",
          shape = "rectangle",
          x = 736,
          y = 448,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 35,
          visible = true,
          properties = {}
        },
        {
          id = 48,
          name = "",
          type = "",
          shape = "rectangle",
          x = 736,
          y = 416,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 35,
          visible = true,
          properties = {}
        },
        {
          id = 49,
          name = "",
          type = "",
          shape = "rectangle",
          x = 736,
          y = 384,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 35,
          visible = true,
          properties = {}
        },
        {
          id = 50,
          name = "",
          type = "",
          shape = "rectangle",
          x = 736,
          y = 352,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 35,
          visible = true,
          properties = {}
        },
        {
          id = 51,
          name = "",
          type = "",
          shape = "rectangle",
          x = 736,
          y = 320,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 35,
          visible = true,
          properties = {}
        },
        {
          id = 52,
          name = "",
          type = "",
          shape = "rectangle",
          x = 736,
          y = 288,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 35,
          visible = true,
          properties = {}
        },
        {
          id = 53,
          name = "",
          type = "",
          shape = "rectangle",
          x = 736,
          y = 256,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 35,
          visible = true,
          properties = {}
        },
        {
          id = 54,
          name = "",
          type = "",
          shape = "rectangle",
          x = 736,
          y = 224,
          width = 32,
          height = 32,
          rotation = 0,
          gid = 35,
          visible = true,
          properties = {}
        }
      }
    }
  }
}
