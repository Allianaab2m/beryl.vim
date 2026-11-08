local M = {}

function M.apply(p)
  for i, c in ipairs(p.terminal) do
    vim.g["terminal_color_" .. (i - 1)] = c
  end
end

return M
