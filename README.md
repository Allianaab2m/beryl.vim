# beryl.vim

Emela のロゴとスライドの配色から作った、エメラルドの深い緑を基調にしたダークテーマ．

```lua
{
  "Allianaab2m/beryl.vim",
  opts = {
    transparent = false,     -- 背景を透過する
    italic_comments = true,
    terminal_colors = true,  -- terminal_color_0〜15 を設定する
    on_highlights = function(hl, p) end, -- 定義の上書き
  },
}
```

```vim
colorscheme beryl
```

lualine は `theme = "beryl"`．

- `lua/beryl/palette.lua` 色の値はここだけ
- `lua/beryl/groups/` ハイライト定義（標準 / Treesitter / semantic tokens / Diagnostic / gitsigns / telescope）
- `lua/beryl/lualine.lua` lualine テーマ（`lua/lualine/themes/beryl.lua` から転送）
