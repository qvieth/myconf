-- ======================================================================================================================================================================================================
-- OPTIONS && VARIABLES ->  o - global options | wo - window options | bo - buffer options | g - global variables | b - buffer variables   

vim.cmd [[colorscheme desert]]
vim.cmd [[filetype plugin indent on]]
vim.o.clipboard = vim.o.clipboard..[[unnamedplus]]
vim.o.background = [[dark]]
vim.o.number = true
vim.o.ruler = true
vim.o.cursorline = true
vim.o.cursorcolumn = false
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
vnoremap u y:call setreg('', TwiddleCase(@"), getregtype(''))<CR>gv""Pgv
]]


-- ======================================================================================================================================================================================================
-- MAPPINGS

vim.api.nvim_set_keymap("n", "v", [[<C-v>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-v>", [[:set ve=all | set cursorcolumn<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>v", [[:set nocursorcolumn | set ve=""<CR>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "v", [[:VBox<CR>]], { noremap = true, silent = true })

-- ======================================================================================================================================================================================================
-- PACKER

-- Packer Bootstraping
local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
  execute 'packadd packer.nvim'
end

-- Plugins
return require('packer').startup(
    function()
        use 'wbthomason/packer.nvim'
        -- THEMES
        -- ESSENTIALS
        use {'nvim-telescope/telescope.nvim',requires={{'nvim-lua/popup.nvim'},{'nvim-lua/plenary.nvim'}}}
        -- use {'glacambre/firenvim', run = function() vim.fn['firenvim#install'](0) end}
        use {'prettier/vim-prettier',run='yarn install'}
        use {"michaelb/sniprun", run = "bash install.sh", cmd = "SnipRun"}
        use 'tpope/vim-commentary'
        use 'tpope/vim-surround'
        -- MARKDOWN EDITING
        use 'vimwiki/vimwiki'
        use {'iamcco/markdown-preview.nvim',run='cd app && yarn install'}
        use 'mzlogin/vim-markdown-toc'
        use "jbyuki/venn.nvim"
    end
)
