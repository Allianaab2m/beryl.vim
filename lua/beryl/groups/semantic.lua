-- LSP の semantic tokens（:h lsp-semantic-highlight）．
-- 基本は Treesitter のキャプチャへ link し、色の定義を一箇所に保つ
return function(p, c)
  return {
    ["@lsp.type.class"] = { link = "@type" },
    ["@lsp.type.comment"] = {}, -- Treesitter のコメント（TODO などの強調）を上書きさせない
    ["@lsp.type.decorator"] = { link = "@attribute" },
    ["@lsp.type.enum"] = { link = "@type" },
    ["@lsp.type.enumMember"] = { link = "@constructor" },
    ["@lsp.type.event"] = { link = "@type" },
    ["@lsp.type.function"] = { link = "@function" },
    ["@lsp.type.interface"] = { link = "@type" },
    ["@lsp.type.keyword"] = { link = "@keyword" },
    ["@lsp.type.macro"] = { link = "@function.macro" },
    ["@lsp.type.method"] = { link = "@function.method" },
    ["@lsp.type.modifier"] = { link = "@keyword.modifier" },
    ["@lsp.type.namespace"] = { link = "@module" },
    ["@lsp.type.number"] = { link = "@number" },
    ["@lsp.type.operator"] = { link = "@operator" },
    ["@lsp.type.parameter"] = { link = "@variable.parameter" },
    ["@lsp.type.property"] = { link = "@property" },
    ["@lsp.type.regexp"] = { link = "@string.regexp" },
    ["@lsp.type.string"] = { link = "@string" },
    ["@lsp.type.struct"] = { link = "@type" },
    ["@lsp.type.type"] = { link = "@type" },
    ["@lsp.type.typeParameter"] = { link = "@type" },
    ["@lsp.type.variable"] = { link = "@variable" },

    -- rust-analyzer
    ["@lsp.type.builtinType"] = { link = "@type.builtin" },
    ["@lsp.type.selfKeyword"] = { link = "@variable.builtin" },
    ["@lsp.type.selfTypeKeyword"] = { link = "@type" },
    ["@lsp.type.lifetime"] = { link = "@keyword.modifier" }, -- Treesitter 側と同じ色にする
    ["@lsp.type.formatSpecifier"] = { link = "@string.escape" },
    ["@lsp.type.escapeSequence"] = { link = "@string.escape" },
    ["@lsp.type.typeAlias"] = { link = "@type.definition" },
    ["@lsp.type.unresolvedReference"] = { sp = p.error, undercurl = true },
    ["@lsp.typemod.variable.mutable"] = { underline = true },
    ["@lsp.typemod.selfKeyword.mutable"] = { underline = true },

    -- 修飾子
    ["@lsp.mod.deprecated"] = { strikethrough = true },
    ["@lsp.typemod.function.defaultLibrary"] = { link = "@function.builtin" },
    ["@lsp.typemod.variable.defaultLibrary"] = { link = "@variable.builtin" },
    -- TS では const の変数がすべて readonly になるので、定数の色にしない
    ["@lsp.typemod.variable.readonly"] = {},

    -- Emela：Treesitter 側と同じく引数を本文色にする
    ["@lsp.type.parameter.emela"] = { link = "@variable.parameter.emela" },
  }
end
