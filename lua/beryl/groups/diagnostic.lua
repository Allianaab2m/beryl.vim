-- Diagnostic．4 段階を色相で分ける：Error 赤橙 / Warn 黄 / Info 青緑 / Hint 紫
return function(p, c)
  local levels = {
    Error = { fg = p.error_bright, bg = p.error_bg, sp = p.error },
    Warn = { fg = p.type, bg = p.warn_bg, sp = p.type },
    Info = { fg = p.keyword, bg = p.info_bg, sp = p.keyword },
    Hint = { fg = p.number, bg = p.hint_bg, sp = p.number },
  }

  local hl = {
    DiagnosticOk = { fg = p.emerald_light },
    DiagnosticUnnecessary = { fg = p.comment },
    DiagnosticDeprecated = { strikethrough = true },
  }
  for name, l in pairs(levels) do
    hl["Diagnostic" .. name] = { fg = l.fg }
    hl["DiagnosticVirtualText" .. name] = { fg = l.fg, bg = l.bg }
    hl["DiagnosticVirtualLines" .. name] = { fg = l.fg }
    hl["DiagnosticUnderline" .. name] = { sp = l.sp, undercurl = true }
    hl["DiagnosticFloating" .. name] = { fg = l.fg }
    hl["DiagnosticSign" .. name] = { fg = l.fg }
  end

  hl.LspReferenceText = { bg = p.bg_hl }
  hl.LspReferenceRead = { bg = p.bg_hl }
  hl.LspReferenceWrite = { bg = p.bg_hl, underline = true }
  hl.LspInlayHint = { fg = p.comment, bg = p.bg_hl, italic = true }
  hl.LspCodeLens = { fg = p.comment }
  hl.LspSignatureActiveParameter = { fg = p.type, bold = true }
  return hl
end
