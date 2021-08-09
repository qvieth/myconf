---@diagnostic disable: trailing-space
---@diagnostic disable-next-line: trailing-space
---@diagnostic disable: undefined-global
-- LUALINE

-- statusline
require('lualine').setup {
  options = {
    theme = vim.g.colors_name
  }
}


-- bufferline
-- require('bufferline').setup {
--   options = {
--     numbers = "buffer_id",
--     number_style = {},
--   }
-- }

