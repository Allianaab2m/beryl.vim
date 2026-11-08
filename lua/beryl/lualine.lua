local p = require("beryl.palette")

local function mode(color)
  return {
    a = { fg = p.bg, bg = color, gui = "bold" },
    b = { fg = p.fg, bg = p.emerald_dark },
    c = { fg = p.fg_dim, bg = p.bg_dark },
  }
end

return {
  normal = mode(p.keyword),
  insert = mode(p.type),
  visual = mode(p.number),
  replace = mode(p.error_bright),
  command = mode(p.string),
  terminal = mode(p.mint),
  inactive = {
    a = { fg = p.comment, bg = p.bg_dark },
    b = { fg = p.comment, bg = p.bg_dark },
    c = { fg = p.comment, bg = p.bg_dark },
  },
}
