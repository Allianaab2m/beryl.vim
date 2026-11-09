-- Treesitter のキャプチャ（:h treesitter-highlight-groups）
--
-- 色の割り当ての方針（Emela のコードで占める面積を実測して決めた）
--   関数はアクアマリン．コードの 15% を占めるので、本文色から離す
--   引数と self/this はレッドベリル
--   副作用の入口（Emela の effect 名、async/await）はロゴ Light
--   失敗の経路（Emela の error 型と fail、throw/try/catch）はレッドベリル
--   フィールドとプロパティは mint、括弧と区切りは fg_dim で一段落とす
return function(p, c)
  return {
    ["@variable"] = { fg = p.fg },
    ["@variable.builtin"] = { fg = p.red_beryl, italic = true }, -- self, this
    ["@variable.parameter"] = { fg = p.red_beryl, italic = true },
    ["@variable.parameter.builtin"] = { fg = p.red_beryl, italic = true },
    ["@variable.member"] = { fg = p.mint }, -- フィールド、Emela の名前付き引数

    ["@constant"] = { fg = p.number },
    ["@constant.builtin"] = { fg = p.number }, -- true, nil, None
    ["@constant.macro"] = { fg = p.emerald_light },
    -- Rust の Some / None / Ok / Err は構成子なので型の色にそろえる
    ["@constant.builtin.rust"] = { fg = p.type },

    ["@module"] = { fg = p.fg, italic = true },
    ["@module.builtin"] = { fg = p.fg, italic = true },
    ["@label"] = { fg = p.emerald_light, italic = true }, -- ループラベル

    ["@string"] = { link = "String" },
    ["@string.documentation"] = { fg = p.comment_doc },
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
    -- 標準のキャプチャではない．tree-sitter-emela が effect 名と error 型に付ける．
    -- 対応しないエディタでは @type にフォールバックする
    ["@type.effect"] = { fg = p.emerald_light },
    ["@type.error"] = { fg = p.red_beryl },

    ["@attribute"] = { fg = p.keyword }, -- @decorator, #[derive]
    ["@attribute.builtin"] = { fg = p.keyword },
    ["@property"] = { fg = p.mint },

    ["@function"] = { link = "Function" },
    ["@function.builtin"] = { fg = p.aquamarine },
    ["@function.call"] = { fg = p.aquamarine },
    ["@function.macro"] = { link = "Macro" },
    ["@function.method"] = { fg = p.aquamarine },
    ["@function.method.call"] = { fg = p.aquamarine },
    ["@constructor"] = { fg = p.type }, -- 構成子は型と同じ色（スライドの Invalid(...) に合わせる）

    ["@operator"] = { link = "Operator" },

    ["@keyword"] = { link = "Keyword" },
    ["@keyword.coroutine"] = { fg = p.emerald_light }, -- async, await
    ["@keyword.function"] = { fg = p.keyword },
    ["@keyword.operator"] = { fg = p.keyword },
    ["@keyword.import"] = { fg = p.keyword },
    ["@keyword.type"] = { fg = p.keyword },
    ["@keyword.modifier"] = { fg = p.keyword },
    ["@keyword.repeat"] = { fg = p.keyword },
    ["@keyword.return"] = { fg = p.keyword },
    ["@keyword.debug"] = { fg = p.error_bright },
    ["@keyword.exception"] = { fg = p.red_beryl }, -- throw, try, catch, fail
    ["@keyword.conditional"] = { fg = p.keyword },
    ["@keyword.directive"] = { fg = p.keyword },

    ["@punctuation.delimiter"] = { fg = p.fg_dim },
    ["@punctuation.bracket"] = { fg = p.fg_dim },
    ["@punctuation.special"] = { fg = p.keyword }, -- `${` `}` など文字列埋め込みの区切り

    ["@comment"] = { link = "Comment" },
    ["@comment.documentation"] = { fg = p.comment_doc }, -- 文章として読ませるので立体で明るく
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

    -- Emela：引数を本文色に戻す．シグネチャで error 型（レッドベリル）と並ぶため
    ["@variable.parameter.emela"] = { fg = p.fg, italic = true },
  }
end
