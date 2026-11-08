local M = {}

local modules = {
  "editor",
  "syntax",
  "treesitter",
  "semantic",
  "diagnostic",
  "gitsigns",
  "telescope",
}

function M.get(p, config)
  local hl = {}
  for _, name in ipairs(modules) do
    for group, spec in pairs(require("beryl.groups." .. name)(p, config)) do
      hl[group] = spec
    end
  end
  return hl
end

return M
