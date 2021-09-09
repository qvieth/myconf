-- OPTIONS

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

-- LVIM
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
lvim.colorscheme = vim.g.colors_name
-- lvim.builtin.cmp.source.tabnine = true
-- lvim.builtin.cmp.source.ultisnips = true
lvim.builtin.treesitter.autotag.enable = true
lvim.builtin.treesitter.rainbow.enable = true
lvim.autocommands._markdown = {}

-- VIMWIKI
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

-- VIM-PENCIL
vim.cmd([[
let g:pencil#wrapModeDefault = 'hard' 
let g:pencil#autoformat = 0 
let g:pencil#textwidth = 74
]])
