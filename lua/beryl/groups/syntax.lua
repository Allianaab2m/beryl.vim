-- 標準の構文ハイライト（:h group-name）．Treesitter が無い言語もこれで色が付く
return function(p, c)
  return {
    Comment = { fg = p.comment, italic = c.italic_comments },

    Constant = { fg = p.number },
    String = { fg = p.string },
    Character = { fg = p.string },
    Number = { fg = p.number },
    Boolean = { fg = p.number },
    Float = { fg = p.number },

    Identifier = { fg = p.fg },
    Function = { fg = p.aquamarine },

    Statement = { fg = p.keyword, italic = c.italic_keywords },
    Conditional = { fg = p.keyword, italic = c.italic_keywords },
    Repeat = { fg = p.keyword, italic = c.italic_keywords },
    Label = { fg = p.keyword },
    Operator = { fg = p.fg },
    Keyword = { fg = p.keyword, italic = c.italic_keywords },
    Exception = { fg = p.red_beryl, italic = c.italic_keywords }, -- 失敗の経路は赤系

    PreProc = { fg = p.keyword, italic = c.italic_keywords },
    Include = { fg = p.keyword, italic = c.italic_keywords },
    Define = { fg = p.keyword, italic = c.italic_keywords },
    Macro = { fg = p.emerald_light },
    PreCondit = { fg = p.keyword, italic = c.italic_keywords },

    Type = { fg = p.type },
    StorageClass = { fg = p.keyword, italic = c.italic_keywords },
    Structure = { fg = p.type },
    Typedef = { fg = p.type },

    Special = { fg = p.mint },
    SpecialChar = { fg = p.keyword },
    Tag = { fg = p.keyword },
    Delimiter = { fg = p.fg_dim },
    SpecialComment = { fg = p.comment, bold = true },
    Debug = { fg = p.error_bright },

    Underlined = { underline = true },
    Ignore = { fg = p.gray },
    Error = { fg = p.error_bright },
    Todo = { fg = p.bg, bg = p.type, bold = true },

    -- markdown など
    htmlH1 = { fg = p.keyword, bold = true },
    htmlH2 = { fg = p.keyword, bold = true },
  }
end
