-- OPTIONS && VARIABLES ->  o - global options | wo - window options | bo - buffer options | g - global variables | b - buffer variables

-- function for reuse with double Esc in mappings
function DefaultState()
	vim.cmd("colo gruvbox")
	vim.cmd("noh")
	vim.cmd([[mapclear <buffer>]])
	vim.o.virtualedit = ""
	vim.o.relativenumber = false
	vim.o.cursorcolumn = false
end
DefaultState()

vim.cmd([[let mapleader='\']])
vim.o.background = "dark"
vim.wo.wrap = false
vim.o.cursorline = true
vim.o.number = true
vim.o.ruler = true

vim.o.wildignorecase = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.incsearch = true
vim.o.shortmess = vim.o.shortmess .. "c"

vim.bo.expandtab = true
vim.bo.tabstop = 4
vim.bo.softtabstop = 4
vim.bo.shiftwidth = 4

vim.o.timeoutlen = 170
vim.o.hlsearch = true
vim.o.hidden = true
vim.o.termguicolors = true
vim.o.guicursor = ""
vim.cmd("set nocompatible")
vim.cmd("filetype plugin indent on")
vim.o.clipboard = vim.o.clipboard .. "unnamedplus"

-- vimwiki
vim.g.vimwiki_global_ext = 0
vim.g.vimwiki_list = {
	{
		path = "~/mynote",
		template_path = "~/vimwiki/templates/",
		template_default = "default",
		syntax = "markdown",
		ext = ".md",
		path_html = "~/mynote_site_html/",
		custom_wiki2html = "vimwiki_markdown",
		template_ext = ".tpl",
	},
	{
		path = "~/myarchive",
		template_path = "~/vimwiki/templates/",
		template_default = "default",
		syntax = "markdown",
		ext = ".md",
		path_html = "~/mynote_site_html/",
		custom_wiki2html = "vimwiki_markdown",
		template_ext = ".tpl",
	},
	{
		path = "~/myblog",
		template_path = "~/vimwiki/templates/",
		template_default = "default",
		syntax = "markdown",
		ext = ".md",
		path_html = "~/mynote_site_html/",
		custom_wiki2html = "vimwiki_markdown",
		template_ext = ".tpl",
	},
	{ path = "~/mydraft/" },
	{ path = "~/mysecret/" },
	{ path = "~/mywiki/" },
}

-- vim-pencil
vim.cmd([[
let g:pencil#wrapModeDefault = 'soft' 
let g:pencil#autoformat = 0 
let g:pencil#textwidth = 74
]])
