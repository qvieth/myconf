-- OPTIONS

function DefaultState()
	vim.o.virtualedit = ""
	vim.o.relativenumber = false
	vim.o.cursorcolumn = false
	vim.o.cursorline = false
	vim.cmd("noh")
end

DefaultState()

lvim.format_on_save = true
lvim.colorscheme = "gruvbox-material"
lvim.transparent_window = true
lvim.builtin.lualine.options.theme = "auto"
vim.o.guicursor = ""
vim.o.cmdheight = 1
vim.o.timeoutlen = 250

-- LVIM-CORE-PLUGINS

-- ALPHA.NVIM
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.alpha.dashboard.section.header.val = {
	-- "     ▄▄▄▄▄███████████████████▄▄▄▄▄         ",
	-- "   ▄██████████▀▀▀▀▀▀▀▀▀▀██████▀████▄       ",
	-- "  █▀████████▄             ▀▀████ ▀██▄      ",
	-- " █▄▄██████████████████▄▄▄         ▄██▀     ",
	-- "  ▀█████████████████████████▄    ▄██▀      ",
	-- "    ▀████▀▀▀▀▀▀▀▀▀▀▀▀█████████▄▄██▀        ",
	-- "      ▀███▄              ▀██████▀          ",
	-- "        ▀██████▄        ▄████▀             ",
	-- "           ▀█████▄▄▄▄▄▄▄███▀               ",
	-- "             ▀████▀▀▀████▀                 ",
	-- "               ▀███▄███▀                   ",
	-- "                  ▀█▀                      ",
	" ⠀⠀⠀⠀⣀⣤⣤⣶⣾⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣶⣶⣦⣤⣀⠀⠀⠀⠀",
	"⣀⣴⣶⣿⣿⣿⣿⣿⣿⣷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣴⣿⣿⣿⣿⣿⣿⣷⣦⣄⡀",
	"⠁⠀⠀⠈⠉⠛⣿⣿⣿⣿⣿⣷⣦⣀⢠⣆⣸⡆⢀⣤⣾⣿⣿⣿⣿⣿⠟⠋⠉⠀⠀⠀⠀",
	"⠀⠀⠀⠀⠀⠀⠸⠿⠿⠿⠿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠿⠿⠿⠏⠀⠀⠀⠀⠀⠀⠀",
	"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠻⣿⣿⣿⣿⠿⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
	"⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
}
local lvim_version = require("lvim.utils.git").get_lvim_version()
lvim.builtin.alpha.dashboard.section.footer.val = { "", "qvieth 🦇 LVIM", lvim_version }

-- CMP
-- table.insert(lvim.builtin.cmp.sources, { name = "ultisnips" })
-- table.insert(lvim.builtin.cmp.sources, { name = "vsnip" })

-- DAP
lvim.builtin.dap.active = true

-- NOTIFY
lvim.builtin.notify.active = true
lvim.builtin.notify.opts = {
	timeout = 100,
	max_width = 50,
	max_height = 1000,
	fps = 60,
	render = "minimal",
	stages = "fade_in_slide_out",
}

-- TREESITTER
-- lvim.builtin.treesitter.autotag.enable = true
lvim.builtin.treesitter.rainbow.enable = true
lvim.builtin.treesitter.ensure_installed = { "norg" }
lvim.builtin.treesitter.highlight = { enable = "true" }

-- AUTOCOMMANDS
-- || To set up autocommands use lvim.autocommands.custom_groups.
-- || Autocommands are defined in the form { Event, filetype, command }.
-- || This will run a command at a given event for the given filetype.
-- || To view help on autocommands: :h autocmd

-- lvim.autocommands._markdown = {} -- disable markdown lvim default autocommands
-- lvim.autocommands.custom_groups = {
-- 	-- On entering a lua file, set the tab spacing and shift width to 8
-- 	{ "BufWinEnter", "*.lua", "setlocal ts=8 sw=8" },
-- 	{ "BufWinEnter", "*.md", "setlocal ts=8 sw=8" },
-- 	-- { "InsertEnter", "*", ":normal zz" }, -- On entering insert mode in any file, scroll the window so the cursor line is centered
-- }

vim.api.nvim_create_autocmd("BufEnter", {
	pattern = { "*.lua" },
	command = "setlocal ts=8 sw=8",
})

vim.api.nvim_create_autocmd("BufEnter", {
	pattern = { "*.json" },
	command = "se syntax=",
})
