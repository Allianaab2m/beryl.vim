local M = {}

function M.apply(p)
  local colors = {
    p.nontext, -- 0 black（bg と区別できる程度に明るく）
    p.error_bright, -- 1 red
    p.emerald_light, -- 2 green
    p.type, -- 3 yellow
    p.blue, -- 4 blue
    p.number, -- 5 magenta
    p.mint, -- 6 cyan
    p.fg_dim, -- 7 white
    p.comment, -- 8 bright black
    p.bright.red, -- 9
    p.bright.green, -- 10
    p.bright.yellow, -- 11
    p.bright.blue, -- 12
    p.bright.magenta, -- 13
    p.bright.cyan, -- 14
    p.fg, -- 15 bright white
  }
  for i, c in ipairs(colors) do
    vim.g["terminal_color_" .. (i - 1)] = c
  end
end

return M
