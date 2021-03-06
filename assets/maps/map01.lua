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
  nextobjectid = 13,
  properties = {},
  tilesets = {
    {
      name = "grass-tiles-2-small",
      firstgid = 1,
      tilewidth = 32,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      image = "tileset/grass-tiles-2-small.png",
      imagewidth = 384,
      imageheight = 192,
      tileoffset = {
        x = 0,
        y = 0
      },
      properties = {},
      terrains = {},
      tilecount = 72,
      tiles = {}
    },
    {
      name = "tree2-final",
      firstgid = 73,
      tilewidth = 32,
      tileheight = 32,
      spacing = 0,
      margin = 0,
      image = "tileset/tree2-final.png",
      imagewidth = 256,
      imageheight = 256,
      tileoffset = {
        x = 0,
        y = 0
      },
      properties = {},
      terrains = {},
      tilecount = 64,
      tiles = {}
    }
  },
  layers = {
    {
      type = "tilelayer",
      name = "background",
      x = 0,
      y = 0,
      width = 40,
      height = 40,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        14, 2, 14, 14, 2, 1, 28, 20, 22, 19, 20, 27, 13, 13, 11, 2, 16, 37, 37, 15, 55, 12, 50, 24, 24, 51, 66, 60, 56, 62, 24, 66, 67, 51, 67, 2, 60, 11, 67, 63,
        13, 2, 13, 13, 2, 2, 40, 10, 9, 21, 21, 27, 1, 13, 23, 16, 18, 8, 19, 43, 60, 2, 1, 53, 11, 60, 60, 66, 1, 13, 60, 14, 53, 1, 13, 50, 12, 23, 12, 50,
        14, 11, 2, 14, 2, 1, 40, 9, 8, 8, 8, 27, 2, 13, 14, 28, 20, 19, 20, 39, 24, 53, 55, 53, 23, 51, 55, 54, 24, 67, 66, 67, 50, 14, 12, 51, 13, 54, 62, 72,
        1, 23, 14, 14, 14, 13, 28, 7, 19, 7, 7, 27, 13, 2, 14, 18, 8, 19, 5, 3, 62, 2, 56, 12, 60, 63, 72, 63, 72, 50, 62, 55, 67, 12, 2, 66, 54, 66, 13, 12,
        13, 1, 1, 14, 14, 13, 28, 8, 10, 9, 10, 39, 1, 13, 32, 8, 8, 7, 17, 15, 50, 53, 60, 56, 63, 2, 14, 66, 12, 2, 63, 56, 56, 56, 2, 54, 13, 55, 24, 72,
        2, 1, 14, 13, 13, 11, 28, 10, 22, 20, 22, 27, 14, 1, 44, 20, 7, 8, 19, 27, 24, 60, 24, 2, 24, 66, 67, 55, 63, 55, 1, 11, 51, 54, 13, 67, 13, 62, 72, 60,
        13, 14, 13, 13, 2, 23, 28, 9, 20, 10, 22, 27, 13, 2, 18, 8, 19, 19, 19, 43, 53, 14, 11, 14, 62, 55, 63, 55, 60, 50, 51, 23, 2, 11, 1, 14, 66, 1, 67, 63,
        14, 1, 2, 1, 1, 2, 40, 10, 9, 21, 19, 39, 14, 40, 20, 19, 5, 25, 25, 3, 72, 51, 23, 60, 50, 13, 24, 53, 66, 14, 54, 14, 54, 23, 62, 1, 2, 51, 62, 14,
        37, 37, 37, 37, 38, 38, 18, 19, 8, 22, 10, 17, 37, 18, 20, 7, 17, 38, 37, 37, 38, 38, 37, 38, 38, 37, 37, 37, 38, 37, 38, 38, 38, 37, 38, 37, 38, 15, 24, 62,
        21, 21, 21, 10, 10, 9, 21, 8, 21, 7, 21, 22, 21, 20, 10, 10, 10, 8, 7, 21, 10, 22, 7, 9, 19, 21, 21, 21, 19, 9, 9, 10, 8, 20, 19, 20, 7, 27, 53, 66,
        10, 8, 10, 19, 22, 9, 19, 9, 22, 20, 7, 9, 20, 7, 9, 21, 10, 19, 20, 21, 20, 22, 9, 21, 7, 20, 19, 8, 7, 9, 21, 7, 8, 19, 19, 9, 8, 39, 50, 55,
        8, 7, 21, 9, 10, 19, 19, 22, 7, 9, 22, 19, 20, 20, 8, 9, 9, 10, 8, 10, 21, 19, 10, 19, 22, 10, 20, 7, 7, 22, 9, 8, 20, 20, 19, 19, 21, 27, 56, 12,
        21, 9, 20, 22, 8, 21, 20, 22, 22, 21, 20, 8, 19, 10, 19, 8, 10, 20, 7, 20, 19, 9, 10, 21, 20, 7, 10, 19, 22, 8, 22, 9, 22, 9, 20, 21, 20, 39, 56, 55,
        9, 7, 8, 22, 10, 22, 9, 22, 19, 10, 9, 8, 8, 8, 8, 19, 21, 8, 20, 8, 8, 7, 10, 19, 9, 21, 20, 10, 22, 10, 9, 21, 10, 8, 7, 8, 10, 27, 24, 54,
        26, 25, 30, 26, 30, 29, 30, 25, 26, 26, 30, 25, 25, 25, 30, 26, 30, 29, 30, 25, 25, 25, 8, 8, 8, 26, 26, 25, 26, 6, 21, 8, 10, 7, 8, 5, 25, 3, 63, 63,
        2, 13, 14, 13, 13, 1, 14, 14, 13, 2, 1, 13, 1, 2, 2, 2, 14, 1, 13, 14, 53, 56, 8, 8, 8, 50, 62, 72, 56, 28, 8, 10, 20, 22, 7, 27, 55, 72, 24, 51,
        13, 2, 13, 2, 2, 14, 1, 14, 11, 14, 1, 13, 1, 2, 1, 2, 14, 1, 2, 2, 60, 51, 8, 8, 8, 24, 63, 66, 56, 40, 22, 19, 21, 22, 7, 27, 13, 11, 63, 63,
        13, 13, 2, 14, 1, 13, 2, 1, 23, 2, 13, 2, 2, 13, 1, 1, 1, 1, 1, 1, 53, 12, 8, 8, 8, 1, 72, 72, 14, 28, 10, 20, 10, 9, 10, 39, 1, 23, 54, 60,
        14, 14, 1, 2, 2, 1, 13, 14, 13, 13, 1, 1, 14, 13, 2, 2, 13, 14, 1, 13, 11, 53, 8, 8, 8, 11, 51, 50, 51, 40, 22, 7, 21, 22, 9, 39, 14, 60, 24, 56,
        2, 14, 13, 13, 2, 14, 13, 13, 2, 13, 13, 2, 14, 14, 2, 1, 1, 1, 2, 2, 23, 60, 8, 8, 8, 23, 24, 12, 50, 40, 22, 21, 8, 8, 20, 39, 60, 54, 50, 66,
        50, 66, 66, 12, 2, 11, 50, 72, 63, 2, 62, 62, 56, 55, 13, 53, 66, 53, 13, 63, 12, 24, 8, 8, 8, 12, 56, 14, 51, 28, 19, 22, 8, 19, 19, 39, 66, 24, 1, 14,
        24, 14, 1, 60, 51, 23, 62, 53, 62, 2, 55, 66, 67, 14, 12, 13, 55, 56, 13, 62, 67, 50, 67, 1, 13, 14, 14, 66, 13, 40, 10, 22, 9, 22, 19, 27, 54, 55, 53, 54,
        13, 13, 1, 55, 51, 24, 54, 60, 62, 53, 50, 56, 63, 51, 53, 11, 72, 66, 2, 14, 67, 66, 62, 72, 2, 72, 55, 72, 66, 28, 22, 10, 19, 10, 10, 39, 55, 63, 63, 2,
        50, 56, 50, 67, 56, 24, 53, 66, 62, 55, 72, 13, 13, 72, 63, 23, 24, 56, 66, 56, 63, 66, 13, 60, 54, 56, 66, 1, 63, 28, 8, 7, 8, 7, 7, 27, 13, 56, 55, 63,
        66, 53, 2, 2, 2, 51, 53, 2, 1, 62, 72, 1, 62, 53, 24, 66, 12, 56, 66, 54, 72, 53, 54, 67, 66, 66, 63, 55, 14, 40, 22, 9, 22, 20, 22, 27, 72, 62, 55, 56,
        56, 50, 14, 1, 54, 62, 72, 51, 63, 63, 55, 72, 56, 72, 60, 53, 66, 13, 24, 14, 53, 53, 11, 51, 54, 56, 56, 54, 54, 28, 19, 21, 22, 9, 22, 39, 66, 51, 11, 14,
        2, 24, 55, 55, 2, 56, 2, 11, 72, 2, 14, 72, 60, 63, 1, 51, 2, 56, 24, 63, 2, 12, 23, 12, 54, 54, 53, 56, 63, 28, 20, 21, 10, 22, 20, 39, 54, 60, 23, 66,
        51, 56, 62, 54, 13, 66, 14, 23, 53, 2, 53, 54, 53, 55, 1, 63, 72, 53, 11, 12, 63, 63, 12, 13, 63, 13, 13, 12, 53, 40, 21, 9, 22, 19, 7, 39, 55, 60, 56, 53,
        55, 56, 14, 67, 62, 51, 50, 24, 51, 60, 53, 54, 12, 55, 72, 54, 62, 53, 23, 54, 54, 51, 60, 2, 66, 13, 53, 24, 62, 28, 21, 19, 21, 20, 7, 39, 14, 62, 14, 1,
        53, 11, 66, 67, 63, 53, 66, 72, 24, 24, 14, 24, 56, 67, 50, 2, 12, 56, 50, 24, 51, 53, 63, 14, 2, 60, 63, 50, 24, 28, 9, 7, 20, 7, 10, 39, 12, 56, 72, 14,
        56, 23, 54, 67, 50, 2, 67, 50, 1, 51, 14, 50, 14, 60, 13, 50, 54, 62, 50, 66, 66, 13, 51, 24, 13, 50, 62, 50, 24, 40, 19, 22, 19, 7, 7, 27, 14, 50, 24, 51,
        67, 63, 72, 2, 66, 67, 12, 72, 72, 24, 55, 54, 67, 50, 50, 16, 38, 38, 38, 38, 38, 37, 38, 37, 38, 38, 37, 37, 38, 18, 21, 8, 21, 22, 21, 27, 53, 56, 14, 66,
        53, 24, 62, 16, 38, 37, 38, 37, 38, 38, 37, 38, 37, 37, 37, 18, 9, 8, 20, 20, 7, 10, 7, 22, 10, 10, 8, 19, 20, 7, 10, 8, 7, 10, 5, 3, 12, 13, 67, 63,
        2, 67, 2, 40, 21, 21, 21, 10, 7, 19, 8, 20, 8, 7, 9, 10, 7, 7, 10, 10, 7, 10, 9, 21, 9, 21, 9, 21, 9, 7, 19, 8, 7, 5, 3, 53, 12, 66, 51, 1,
        53, 62, 13, 28, 10, 22, 10, 22, 19, 10, 7, 7, 7, 10, 20, 8, 22, 22, 19, 22, 7, 22, 20, 20, 7, 22, 22, 20, 21, 20, 8, 19, 5, 3, 62, 66, 56, 2, 62, 55,
        60, 14, 72, 40, 19, 19, 21, 9, 19, 22, 9, 9, 19, 10, 10, 21, 22, 21, 10, 7, 22, 20, 8, 7, 21, 19, 19, 19, 8, 19, 20, 5, 3, 54, 66, 11, 67, 56, 55, 72,
        53, 60, 72, 28, 20, 19, 8, 9, 8, 10, 19, 7, 21, 10, 21, 21, 21, 19, 10, 7, 10, 22, 19, 8, 22, 9, 21, 19, 10, 10, 5, 3, 1, 60, 12, 23, 56, 50, 14, 1,
        1, 63, 72, 40, 7, 20, 22, 20, 21, 9, 21, 19, 9, 9, 9, 10, 21, 9, 8, 22, 22, 7, 22, 7, 9, 9, 20, 10, 21, 8, 27, 53, 24, 67, 1, 72, 66, 14, 66, 11,
        14, 53, 63, 28, 22, 7, 22, 20, 7, 19, 7, 19, 8, 7, 8, 22, 5, 25, 25, 25, 26, 26, 25, 25, 26, 26, 25, 26, 26, 26, 3, 11, 54, 56, 24, 1, 66, 62, 13, 23,
        54, 14, 53, 4, 25, 25, 25, 26, 26, 25, 26, 26, 25, 26, 26, 25, 14, 62, 1, 67, 72, 55, 56, 13, 63, 56, 53, 72, 54, 14, 24, 23, 53, 13, 51, 60, 62, 51, 50, 63
      }
    },
    {
      type = "tilelayer",
      name = "foreground",
      x = 0,
      y = 0,
      width = 40,
      height = 40,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 121, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 129, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 120, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 121, 122, 123, 124, 125, 126, 127, 128, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 129, 130, 131, 132, 133, 134, 135, 136, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 120, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 123, 124, 125, 126, 127, 128, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 131, 132, 133, 134, 135, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      name = "top",
      x = 0,
      y = 0,
      width = 40,
      height = 40,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 73, 74, 75, 76, 77, 78, 79, 80, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 81, 82, 83, 84, 85, 86, 87, 88, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 89, 90, 91, 92, 93, 94, 95, 96, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 97, 98, 99, 100, 101, 102, 103, 104, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 105, 106, 107, 108, 109, 110, 111, 112, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 113, 114, 115, 116, 117, 118, 119, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 73, 74, 75, 76, 77, 78, 79, 80, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 81, 82, 83, 84, 85, 86, 87, 88, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 89, 90, 91, 92, 93, 94, 95, 96, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 97, 98, 99, 100, 101, 102, 103, 104, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 105, 106, 107, 108, 109, 110, 111, 112, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 113, 114, 115, 116, 117, 118, 119, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "objectgroup",
      name = "collisions",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      objects = {
        {
          id = 1,
          name = "",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 0,
          width = 224,
          height = 288,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 5,
          name = "",
          type = "",
          shape = "polygon",
          x = 352,
          y = 288,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 0, y = -288 },
            { x = 928, y = -288 },
            { x = 928, y = 0 },
            { x = 160, y = 0 },
            { x = 160, y = -64 },
            { x = 256, y = -64 },
            { x = 256, y = -128 },
            { x = 224, y = -128 },
            { x = 224, y = -192 },
            { x = 256, y = -192 },
            { x = 256, y = -256 },
            { x = 192, y = -256 },
            { x = 192, y = -224 },
            { x = 160, y = -224 },
            { x = 160, y = -160 },
            { x = 128, y = -160 },
            { x = 128, y = -96 },
            { x = 128, y = -64 },
            { x = 96, y = -64 },
            { x = 96, y = 0 }
          },
          properties = {}
        },
        {
          id = 6,
          name = "",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 448,
          width = 960,
          height = 544,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 10,
          name = "",
          type = "",
          shape = "polygon",
          x = 1184,
          y = 288,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 96, y = 0 },
            { x = 96, y = 992 },
            { x = -224, y = 992 },
            { x = -224, y = 864 },
            { x = -192, y = 864 },
            { x = -192, y = 832 },
            { x = -160, y = 832 },
            { x = -160, y = 800 },
            { x = -128, y = 800 },
            { x = -128, y = 768 },
            { x = -96, y = 768 },
            { x = -96, y = 736 },
            { x = -64, y = 736 },
            { x = -64, y = 160 },
            { x = 0, y = 160 }
          },
          properties = {}
        },
        {
          id = 11,
          name = "",
          type = "",
          shape = "polygon",
          x = 960,
          y = 1216,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = 0, y = 64 },
            { x = -960, y = 64 },
            { x = -960, y = 32 },
            { x = -448, y = 32 },
            { x = -448, y = 0 }
          },
          properties = {}
        },
        {
          id = 12,
          name = "",
          type = "",
          shape = "polygon",
          x = 128,
          y = 1248,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polygon = {
            { x = 0, y = 0 },
            { x = -128, y = 0 },
            { x = -128, y = -256 },
            { x = 832, y = -256 },
            { x = 832, y = -224 },
            { x = 384, y = -224 },
            { x = 384, y = -192 },
            { x = 0, y = -192 }
          },
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      name = "objects",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      objects = {
        {
          id = 7,
          name = "playerspawn",
          type = "spawn",
          shape = "rectangle",
          x = 1024,
          y = 832,
          width = 32,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    }
  }
}
