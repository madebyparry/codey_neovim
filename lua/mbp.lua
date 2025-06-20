-- local palette = require("nordic.colors")
--  Colors Setup
require("nordic").setup({
  transparent = {
    bg = true,
  },
  bright_border = false,
  swap_backgrounds = false,
  bold_keywords = true,
  italic_comments = true,
  -- on_palette = function(palette)
  --   -- palette.black0 = "#BF616A"
  --   -- palette.green.base = palette.cyan.base
  -- end,
  -- after_palette = function(palette)
  --   local U = require("nordic.utils")
  --   palette.bg_visual = U.blend(palette.bg_dark, palette.bg, 0.15)
  -- end,
  on_highlight = function(highlights, palette)
    -- print(vim.inspect(highlights))
    highlights.Visual.bg = "#2E3440" -- Manual fix for a low contrast visual line color
    -- highlights.TelescopePromptTitle = { fg = palette.yellow.bright }
    -- highlights.TelescopePromptTitle = {
    --   fg = palette.red.bright,
    --   bg = palette.bg_dark,
    --   italic = true,
    --   underline = true,
    --   sp = palette.yellow.dim,
    --   undercurl = false,
    -- }
  end,
  ts_context = {
    -- Enables dark background for treesitter-context window
    dark_background = true,
  },
  noice = {
    -- Available styles: `classic`, `flat`.
    style = "classic",
  },
  telescope = {
    -- Available styles: `classic`, `flat`.
    style = "classic",
  },
})
require("nordic").load()

-- vim.cmd.colorscheme("nordic")

-- vim.opt.guifont = "Courier New"
vim.opt.guifont = "Fantasque Sans Mono"
