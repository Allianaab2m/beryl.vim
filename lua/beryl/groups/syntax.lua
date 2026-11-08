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
    Function = { fg = p.mint },

    Statement = { fg = p.keyword },
    Conditional = { fg = p.keyword },
    Repeat = { fg = p.keyword },
    Label = { fg = p.keyword },
    Operator = { fg = p.fg },
    Keyword = { fg = p.keyword },
    Exception = { fg = p.keyword },

    PreProc = { fg = p.keyword },
    Include = { fg = p.keyword },
    Define = { fg = p.keyword },
    Macro = { fg = p.emerald_light },
    PreCondit = { fg = p.keyword },

    Type = { fg = p.type },
    StorageClass = { fg = p.keyword },
    Structure = { fg = p.type },
    Typedef = { fg = p.type },

    Special = { fg = p.mint },
    SpecialChar = { fg = p.keyword },
    Tag = { fg = p.keyword },
    Delimiter = { fg = p.fg },
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
