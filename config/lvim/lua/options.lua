-- OPTIONS

lvim.lang.lua.formatters = {
	{
		exe = "stylua",
		args = {},
	},
}

lvim.builtin.dashboard.custom_header = {
	"     ▄▄▄▄▄███████████████████▄▄▄▄▄         ",
	"   ▄██████████▀▀▀▀▀▀▀▀▀▀██████▀████▄       ",
	"  █▀████████▄             ▀▀████ ▀██▄      ",
	" █▄▄██████████████████▄▄▄         ▄██▀     ",
	"  ▀█████████████████████████▄    ▄██▀      ",
	"    ▀████▀▀▀▀▀▀▀▀▀▀▀▀█████████▄▄██▀        ",
	"      ▀███▄              ▀██████▀          ",
	"        ▀██████▄        ▄████▀             ",
	"           ▀█████▄▄▄▄▄▄▄███▀               ",
	"             ▀████▀▀▀████▀                 ",
	"               ▀███▄███▀                   ",
	"                  ▀█▀                      ",
}

function DefaultState()
	vim.cmd("colo gruvbox")
	vim.cmd("noh")
	vim.cmd([[mapclear <buffer>]])
	vim.o.virtualedit = ""
	vim.o.relativenumber = false
	vim.o.cursorcolumn = false
end
DefaultState()
vim.o.cmdheight = 1
vim.o.timeoutlen = 250

lvim.colorscheme = vim.g.colors_name
lvim.builtin.compe.source.tabnine = true
lvim.builtin.compe.source.ultisnips = true
lvim.builtin.treesitter.rainbow.enable = true

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
let g:pencil#wrapModeDefault = 'hard' 
let g:pencil#autoformat = 0 
let g:pencil#textwidth = 74
]])

-- Autocommands (https://neovim.io/doc/user/autocmd.html) | replace nil - { "BufWinEnter", "*.lua", "setlocal ts=8 sw=8" },
lvim.autocommands._markdown = {}
