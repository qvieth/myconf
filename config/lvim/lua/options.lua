-- OPTIONS
function DefaultState()
	vim.cmd("colo dawnfox")
	vim.cmd("noh")
	-- vim.cmd("mapclear <buffer>") -- this will also clear vimwiki keymap -> move into venn config
	vim.o.virtualedit = ""
	vim.o.relativenumber = false
	vim.o.cursorcolumn = false
	vim.o.cursorline = false
end
DefaultState()

vim.o.guicursor = ""
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
lvim.builtin.treesitter.autotag.enable = true
lvim.builtin.treesitter.rainbow.enable = true
lvim.builtin.cmp.sources[20] = { name = "ultisnips" }

lvim.autocommands._markdown = {}
