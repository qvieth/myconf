---@diagnostic disable: trailing-space
---@diagnostic disable-next-line: trailing-space
---@diagnostic disable: undefined-global
-- ========== OPTIONS ==========
-- o - global options          =
-- wo - window options         =
-- bo - buffer options         =
-- =============================

vim.g.material_style = [[darker]]
-- vim.g.onedark_style = [[warm]]
vim.cmd [[colorscheme material]]

vim.cmd [[filetype plugin indent on]]
vim.o.clipboard = vim.o.clipboard..[[unnamedplus]]
vim.o.background = [[dark]]
vim.o.number = true
vim.o.ruler = true
vim.o.cursorline = true
vim.o.guicursor = ""
vim.wo.wrap = false

vim.o.termguicolors = true
vim.o.timeoutlen = 200 vim.o.ttimeoutlen = 0
vim.o.updatetime = 300
vim.o.hidden = true
vim.o.wildignorecase = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.incsearch = true
vim.o.shortmess = vim.o.shortmess .. [[c]]

vim.bo.tabstop = 4
vim.bo.softtabstop = 4
vim.bo.expandtab = true
vim.bo.shiftwidth = 4

-- ========== VARIABLES ==========
-- g - global variables          =
-- b - buffer variables          =
-- ===============================

-- coc.nvim
vim.g.coc_snippet_next = '<tab>'
vim.g.coc_global_extensions = {
    'coc-marketplace',
    'coc-snippets',
    'coc-yaml',
    'coc-tsserver',
    'coc-pyright',
    'coc-json', 
    'coc-docker', 
    'coc-html',
    'coc-css',
    'coc-yank',
    'coc-tabnine',
    'coc-terminal',
    'coc-explorer',
    'coc-word',
    'coc-emoji',
    'coc-lua',
    'coc-eslint',
    'coc-emmet',

}

-- vimwiki
vim.g.vimwiki_toc_header_level=2
vim.g.vimwiki_list = {
    {
        path= '~/mynote',
        template_path= '~/vimwiki/templates/',
        template_default= 'default',
        syntax= 'markdown',
        ext= '.md',
        path_html= '~/mynote_site_html/',
        custom_wiki2html= 'vimwiki_markdown',
        template_ext= '.tpl'
    },
    {path= '~/mynote2/'},
    {path= '~/mytest/'}
}
vim.cmd 'set nocompatible'

-- floaterm
vim.g.floaterm_width = 0.6
vim.g.floaterm_height = 0.7
vim.g.floaterm_position = 'topright'
vim.g.floaterm_title = 'nvim: $1/$2'
vim.cmd 'hi FloatermBorder guibg=none guifg=none'
vim.cmd 'hi Floaterm guibg=none guifg=none'

-- Add Titlecase function
vim.cmd [[
function! TwiddleCase(str)
  if a:str ==# toupper(a:str)
    let result = tolower(a:str)
  elseif a:str ==# tolower(a:str)
    let result = substitute(a:str,'\(\<\w\+\>\)', '\u\1', 'g')
  else
    let result = toupper(a:str)
  endif
  return result
endfunction
vnoremap <S-u> y:call setreg('', TwiddleCase(@"), getregtype(''))<CR>gv""Pgv
]]

-- Firenvim
if not vim.g.started_by_firenvim then
    require("bufferline").setup{}
end

-- nvim-autopairs
require('nvim-autopairs').setup()
