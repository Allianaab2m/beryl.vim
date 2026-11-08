# beryl.vim

A dark Neovim colorscheme in deep emerald, written in Lua.

The palette comes from the logo and slides of [Emela](https://github.com/emela-lang/emela),
a programming language. Emerald is a variety of beryl, hence the name.

![beryl in Neovim, showing TypeScript and Rust side by side](assets/screenshot.png)

## Features

- Standard highlight groups, Treesitter captures and LSP semantic tokens
- Diagnostics in four distinct hues: error, warning, info and hint
- Plugin support: [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim),
  [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) and a
  [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) theme
- The 16 terminal colors (`terminal_color_0` to `terminal_color_15`)
- Optional transparent background
- All body text meets WCAG AA (4.5:1) against the background

## Requirements

- Neovim 0.10 or later
- `termguicolors` (beryl turns it on when loaded)

## Installation

With [lazy.nvim](https://github.com/folke/lazy.nvim):

```lua
{
  "Allianaab2m/beryl.vim",
  lazy = false,
  priority = 1000,
  config = function()
    require("beryl").setup({})
    vim.cmd.colorscheme("beryl")
  end,
}
```

Or just run `:colorscheme beryl` after installing it with any plugin manager.

## Configuration

These are the defaults. Call `setup` before `:colorscheme beryl`.

```lua
require("beryl").setup({
  -- Leave the background unset so the terminal background shows through
  transparent = false,
  italic_comments = true,
  -- Set terminal_color_0 to terminal_color_15
  terminal_colors = true,
  -- Override or add highlight groups
  on_highlights = function(highlights, palette)
    -- highlights.CursorLine = { bg = palette.bg_dark }
  end,
})
```

### lualine

```lua
require("lualine").setup({
  options = { theme = "beryl" },
})
```

## Other apps

Themes for other apps live in [`extras/`](extras):

- [Ghostty](https://ghostty.org): copy `extras/ghostty/beryl` to
  `~/.config/ghostty/themes/beryl`, then set `theme = beryl` in your config
- [Claude Code](https://claude.com/claude-code): copy `extras/claude-code/beryl.json`
  to `~/.claude/themes/beryl.json`, then pick Beryl in `/theme`

## Palette

| Role | Color |
| --- | --- |
| Background | `#112B26` |
| Foreground | `#E4F4EF` |
| Comment (italic) | `#7F9A93` |
| Keyword, attribute | `#5FD9BC` |
| Type, constructor | `#F2C46D` |
| String | `#F4A77A` |
| Number, built-in constant | `#C9A6F5` |
| Function | `#A9E3D6` |
| `self`, `this`, macro | `#24C0A1` |
| Error | `#E07A50` |

Contrast against the background:

| Color | Ratio |
| --- | --- |
| Foreground | 13.23:1 |
| Function | 10.48:1 |
| Type | 9.23:1 |
| Keyword | 8.69:1 |
| String | 7.63:1 |
| Number | 7.34:1 |
| Error | 5.06:1 |
| Comment | 4.97:1 |

The full palette, including the derived background shades, is in
[`lua/beryl/palette.lua`](lua/beryl/palette.lua).

## Layout

```
colors/beryl.lua              entry point for :colorscheme
lua/beryl/palette.lua         every color value lives here
lua/beryl/groups/             highlight definitions, one file per area
lua/beryl/terminal.lua        terminal colors
scripts/build.lua             generates extras/ from the palette
extras/                       themes for other apps (generated, do not edit)
lua/beryl/lualine.lua         lualine theme
lua/lualine/themes/beryl.lua  lets lualine find the theme by name
```

## Development

`lua/beryl/palette.lua` is the single source for every color. After changing
it, regenerate the themes in `extras/`:

```sh
nvim -l scripts/build.lua
```

## License

[MIT](LICENSE)
