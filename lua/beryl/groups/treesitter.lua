-- Treesitter のキャプチャ（:h treesitter-highlight-groups）
return function(p, c)
  return {
    ["@variable"] = { fg = p.fg },
    ["@variable.builtin"] = { fg = p.emerald_light, italic = true }, -- self, this
    ["@variable.parameter"] = { fg = p.fg },
    ["@variable.parameter.builtin"] = { fg = p.emerald_light, italic = true },
    ["@variable.member"] = { fg = p.fg },

    ["@constant"] = { fg = p.fg },
    ["@constant.builtin"] = { fg = p.number }, -- true, nil, None
    ["@constant.macro"] = { fg = p.emerald_light },
    -- Rust の Some / None / Ok / Err は構成子なので型の色にそろえる
    ["@constant.builtin.rust"] = { fg = p.type },

    ["@module"] = { fg = p.fg, italic = true },
    ["@module.builtin"] = { fg = p.fg, italic = true },
    ["@label"] = { fg = p.emerald_light, italic = true }, -- ループラベル

    ["@string"] = { link = "String" },
    ["@string.documentation"] = { fg = p.comment, italic = c.italic_comments },
    ["@string.regexp"] = { fg = p.mint },
    ["@string.escape"] = { fg = p.keyword },
    ["@string.special"] = { fg = p.keyword },
    ["@string.special.symbol"] = { fg = p.number },
    ["@string.special.url"] = { fg = p.blue, underline = true },
    ["@string.special.path"] = { fg = p.string },
    ["@character"] = { link = "Character" },
    ["@character.special"] = { fg = p.keyword },

    ["@boolean"] = { link = "Boolean" },
    ["@number"] = { link = "Number" },
    ["@number.float"] = { link = "Float" },

    ["@type"] = { link = "Type" },
    ["@type.builtin"] = { fg = p.type },
    ["@type.definition"] = { fg = p.type },

    ["@attribute"] = { fg = p.keyword }, -- @decorator, #[derive]
    ["@attribute.builtin"] = { fg = p.keyword },
    ["@property"] = { fg = p.fg },

    ["@function"] = { link = "Function" },
    ["@function.builtin"] = { fg = p.mint },
    ["@function.call"] = { fg = p.mint },
    ["@function.macro"] = { link = "Macro" },
    ["@function.method"] = { fg = p.mint },
    ["@function.method.call"] = { fg = p.mint },
    ["@constructor"] = { fg = p.type }, -- 構成子は型と同じ色（スライドの Invalid(...) に合わせる）

    ["@operator"] = { link = "Operator" },

    ["@keyword"] = { link = "Keyword" },
    ["@keyword.coroutine"] = { fg = p.keyword },
    ["@keyword.function"] = { fg = p.keyword },
    ["@keyword.operator"] = { fg = p.keyword },
    ["@keyword.import"] = { fg = p.keyword },
    ["@keyword.type"] = { fg = p.keyword },
    ["@keyword.modifier"] = { fg = p.keyword },
    ["@keyword.repeat"] = { fg = p.keyword },
    ["@keyword.return"] = { fg = p.keyword },
    ["@keyword.debug"] = { fg = p.error_bright },
    ["@keyword.exception"] = { fg = p.keyword },
    ["@keyword.conditional"] = { fg = p.keyword },
    ["@keyword.directive"] = { fg = p.keyword },

    ["@punctuation.delimiter"] = { fg = p.fg }, -- スライドに合わせ括弧・区切りは本文色
    ["@punctuation.bracket"] = { fg = p.fg },
    ["@punctuation.special"] = { fg = p.keyword }, -- `${` `}` など文字列埋め込みの区切り

    ["@comment"] = { link = "Comment" },
    ["@comment.documentation"] = { link = "Comment" },
    ["@comment.error"] = { fg = p.bg, bg = p.error_bright, bold = true },
    ["@comment.warning"] = { fg = p.bg, bg = p.type, bold = true },
    ["@comment.todo"] = { fg = p.bg, bg = p.keyword, bold = true },
    ["@comment.note"] = { fg = p.bg, bg = p.mint, bold = true },

    ["@markup.strong"] = { bold = true },
    ["@markup.italic"] = { italic = true },
    ["@markup.strikethrough"] = { strikethrough = true },
    ["@markup.underline"] = { underline = true },
    ["@markup.heading"] = { fg = p.keyword, bold = true },
    ["@markup.quote"] = { fg = p.comment, italic = true },
    ["@markup.math"] = { fg = p.number },
    ["@markup.link"] = { fg = p.keyword },
    ["@markup.link.label"] = { fg = p.keyword },
    ["@markup.link.url"] = { fg = p.blue, underline = true },
    ["@markup.raw"] = { fg = p.string },
    ["@markup.list"] = { fg = p.keyword },
    ["@markup.list.checked"] = { fg = p.emerald_light },
    ["@markup.list.unchecked"] = { fg = p.comment },

    ["@diff.plus"] = { link = "Added" },
    ["@diff.minus"] = { link = "Removed" },
    ["@diff.delta"] = { link = "Changed" },

    ["@tag"] = { fg = p.keyword }, -- <div>
    ["@tag.builtin"] = { fg = p.keyword },
    ["@tag.attribute"] = { fg = p.type, italic = true },
    ["@tag.delimiter"] = { fg = p.fg_dim },
  }
end
