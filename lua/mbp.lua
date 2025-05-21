local palette = require("nordic.colors")
--  Colors Setup
require("nordic").setup({
  transparent_background = true,
  bright_border = false,
  swap_backgrounds = false,
  bold_keywords = true,
  italic_comments = true,
  on_palette = function(palette)
    -- palette.black0 = "#BF616A"
    -- palette.green.base = palette.cyan.base
  end,
  after_palette = function(palette)
    local U = require("nordic.utils")
    palette.bg_visual = U.blend(palette.bg_dark, palette.bg, 0.15)
  end,
  on_highlight = function(highlights, palette)
    -- highlights.TelescopePromptTitle = {
    --   fg = palette.red.bright,
    --   bg = palette.bg_dark,
    --   italic = true,
    --   underline = true,
    --   sp = palette.yellow.dim,
    --   undercurl = false,
    -- }
  end,
})
-- require("nordic").load()

vim.cmd.colorscheme("nordic")

-- vim.opt.guifont = "Courier New"
vim.opt.guifont = "Fantasque Sans Mono"
