-- beryl のパレット．色の値はここにだけ書く．
-- 派生色（「派生」とコメントしたもの）は元の色を sRGB で線形に混ぜて作った．
local M = {}

-- 元の配色（Emela のロゴとスライド）
M.bg = "#112B26"
M.fg = "#E4F4EF"
M.comment = "#7F9A93"
M.keyword = "#5FD9BC" -- キーワード・アノテーション
M.type = "#F2C46D" -- 型・構成子
M.string = "#F4A77A"
M.number = "#C9A6F5"
M.emerald_deep = "#0F6353" -- ロゴ Emerald Deep
M.emerald_dark = "#107460" -- ロゴ Dark
M.emerald_light = "#24C0A1" -- ロゴ Light
M.mint = "#A9E3D6"
M.gray = "#55635F"
M.error = "#C9633A"

-- 派生：背景
M.bg_dark = "#0D201C" -- bg を黒へ 25%．ステータスライン、非アクティブ面
M.bg_hl = "#1E3732" -- bg を fg へ 6%．カーソル行、ポップアップ
M.bg_visual = "#10473C" -- bg を emerald_deep へ 50%．選択範囲
M.bg_search = "#3E4A34" -- bg を type へ 20%．検索ヒット
M.nontext = "#2A433E" -- bg を fg へ 12%．インデントガイド、空白文字

-- 派生：前景
M.fg_dim = "#AFC2BD" -- fg を bg へ 25%．句読点、非アクティブな文字
M.error_bright = "#E07A50" -- error を明るく．文字として読ませる用（bg 上 5.06:1）
M.blue = "#7FBCE8" -- パレットに青が無いので追加．ターミナルの blue と URL 用

-- 派生：Diagnostic の背景（各色を bg へ 15〜20% 混ぜる）
M.error_bg = "#36362A"
M.warn_bg = "#334231"
M.info_bg = "#1D453C"
M.hint_bg = "#2D3D45"

-- 派生：diff の背景
M.diff_add = "#15493F" -- bg を emerald_light へ 20%
M.diff_delete = "#36362A" -- bg を error へ 20%
M.diff_change = "#2C3D2F" -- bg を type へ 12%
M.diff_text = "#495138" -- bg を type へ 25%

-- 派生：ターミナルの bright 色（元の色を白へ 25%）
M.bright = {
  red = "#E89B7C",
  green = "#5BD0B8",
  yellow = "#F5D392",
  blue = "#9FCDEE",
  magenta = "#D6BCF8",
  cyan = "#BEEAE0",
}

M.none = "NONE"

return M
