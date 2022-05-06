-- OPTIONS
function DefaultState()
	vim.cmd("colo gruvbox-material")
	vim.cmd("se bg=light")
	vim.cmd("noh")
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

lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.alpha.dashboard.section.header.val = {
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
