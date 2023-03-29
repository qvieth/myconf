-- LANGUAGES

-- generic LSP settings

-- ---@usage disable automatic installation of servers
-- lvim.lsp.installer.setup.automatic_installation = true
lvim.lsp.automatic_servers_installation = true

--accepts a list of options identical to:
--https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md

-- set a formatter, this will override the language server formatting capabilities (if it exists)
local formatters = require("lvim.lsp.null-ls.formatters")
formatters.setup({
	{ command = "black" },
	-- { command = "isort" },
	{ command = "prettier" },
	{ command = "prettier", filetypes = { "markdown", "vimwiki" } },
	{ command = "stylua" },
	{ command = "shellharden" },
	{ command = "shfmt" },
	{ command = "rubocop" },
})

-- set additional linters
local linters = require("lvim.lsp.null-ls.linters")
linters.setup({
	{ command = "flake8" },
	-- { command = "pylint" },
	{ command = "shellcheck", filetypes = { "zsh", "sh" } },
	{ command = "zsh" },
	{ command = "proselint", filetypes = { "markdown", "vimwiki" } },
	{ command = "write-good", filetypes = { "markdown", "vimwiki" } },
	{ command = "rubocop" },
})
