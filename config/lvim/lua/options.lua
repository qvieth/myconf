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
lvim.autocommands._markdown = {}
