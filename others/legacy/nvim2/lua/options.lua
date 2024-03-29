-- OPTIONS && VARIABLES ->  o - global options | wo - window options | bo - buffer options | g - global variables | b - buffer variables

-- function for reuse with double Esc in mappings
function DefaultState()
	vim.cmd("colo yang")
	vim.cmd("noh")
	-- vim.cmd([[mapclear <buffer>]]) -- this will also clear vimwiki keymap -> move into venn config
	vim.o.virtualedit = ""
	vim.o.relativenumber = false
	vim.o.cursorcolumn = false
	vim.o.cursorline = false
	vim.o.number = false
end
DefaultState()

vim.cmd([[let mapleader='\']])
vim.cmd("set nocompatible")
vim.cmd("filetype plugin indent on")
vim.o.background = "light"
vim.wo.wrap = false

vim.o.laststatus = 0
vim.o.ruler = false
vim.o.showcmd = false

vim.o.wildignorecase = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.incsearch = true
vim.o.shortmess = vim.o.shortmess .. "c"

vim.bo.expandtab = true
vim.bo.tabstop = 2
vim.bo.softtabstop = 2
vim.bo.shiftwidth = 2

vim.o.timeoutlen = 170
vim.o.hlsearch = true
vim.o.hidden = true
vim.o.termguicolors = true
vim.o.guicursor = ""
vim.o.clipboard = vim.o.clipboard .. "unnamedplus"
