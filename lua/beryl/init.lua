local M = {}

M.config = vim.deepcopy(require("beryl.config").defaults)

function M.setup(opts)
  M.config = vim.tbl_deep_extend("force", vim.deepcopy(require("beryl.config").defaults), opts or {})
end

function M.load()
  if vim.g.colors_name then
    vim.cmd("hi clear")
  end
  vim.o.termguicolors = true
  vim.o.background = "dark"
  vim.g.colors_name = "beryl"

  local p = require("beryl.palette")
  local hl = require("beryl.highlights").get(p, M.config)
  if M.config.on_highlights then
    M.config.on_highlights(hl, p)
  end
  for name, spec in pairs(hl) do
    vim.api.nvim_set_hl(0, name, spec)
  end

  if M.config.terminal_colors then
    require("beryl.terminal").apply(p)
  end
end

return M
