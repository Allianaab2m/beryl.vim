return function(p, c)
  return {
    GitSignsAdd = { fg = p.emerald_light },
    GitSignsChange = { fg = p.type },
    GitSignsDelete = { fg = p.error_bright },
    GitSignsTopdelete = { link = "GitSignsDelete" },
    GitSignsChangedelete = { link = "GitSignsChange" },
    GitSignsUntracked = { fg = p.emerald_dark },
    GitSignsAddNr = { link = "GitSignsAdd" },
    GitSignsChangeNr = { link = "GitSignsChange" },
    GitSignsDeleteNr = { link = "GitSignsDelete" },
    GitSignsAddLn = { bg = p.diff_add },
    GitSignsChangeLn = { bg = p.diff_change },
    GitSignsDeleteLn = { bg = p.diff_delete },
    GitSignsAddInline = { bg = p.diff_add },
    GitSignsChangeInline = { bg = p.diff_text },
    GitSignsDeleteInline = { bg = p.diff_delete },
    GitSignsCurrentLineBlame = { fg = p.comment, italic = true },
    GitSignsAddPreview = { link = "DiffAdd" },
    GitSignsDeletePreview = { link = "DiffDelete" },
  }
end
