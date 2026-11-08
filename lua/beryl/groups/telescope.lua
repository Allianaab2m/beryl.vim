return function(p, c)
  return {
    TelescopeNormal = { fg = p.fg, bg = p.bg_hl },
    TelescopeBorder = { fg = p.emerald_dark, bg = p.bg_hl },
    TelescopeTitle = { fg = p.bg, bg = p.keyword, bold = true },
    TelescopePromptNormal = { fg = p.fg, bg = p.bg_hl },
    TelescopePromptBorder = { fg = p.emerald_light, bg = p.bg_hl },
    TelescopePromptTitle = { fg = p.bg, bg = p.emerald_light, bold = true },
    TelescopePromptPrefix = { fg = p.keyword },
    TelescopePromptCounter = { fg = p.comment },
    TelescopePreviewTitle = { fg = p.bg, bg = p.type, bold = true },
    TelescopeResultsTitle = { fg = p.bg, bg = p.keyword, bold = true },
    TelescopeSelection = { fg = p.fg, bg = p.emerald_deep, bold = true },
    TelescopeSelectionCaret = { fg = p.keyword, bg = p.emerald_deep },
    TelescopeMultiSelection = { fg = p.number },
    TelescopeMultiIcon = { fg = p.number },
    TelescopeMatching = { fg = p.keyword, bold = true },
  }
end
