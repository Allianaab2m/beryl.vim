local M = {}

M.defaults = {
  -- true にすると Normal などの背景を塗らず、ターミナルの背景を透かす
  transparent = false,
  italic_comments = true,
  -- terminal_color_0〜15 を設定する
  terminal_colors = true,
  -- function(highlights, palette) で定義を上書きできる
  on_highlights = nil,
}

return M
