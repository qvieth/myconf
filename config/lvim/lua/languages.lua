-- LANGUAGES

lvim.lsp.automatic_servers_installation = true

local formatters = require("lvim.lsp.null-ls.formatters")
formatters.setup({
	{ exe = "black" },
	{ exe = "stylua" },
	{
		exe = "prettier",
		filetypes = { "markdown", "vimwiki" },
		-- args = { "--print-width", "100" },
		-- filetypes = { "typescript", "typescriptreact" },
	},
	{
		exe = "shfmt",
		-- args = { "--print-width", "100" },
		filetypes = { "zsh", "sh" },
	},
})

local linters = require("lvim.lsp.null-ls.linters")
linters.setup({
	{
		exe = "write-good",
		filetypes = { "markdown", "vimwiki" },
	},
	{
		exe = "shellcheck",
		args = { "--severity", "warning" },
		filetypes = { "zsh", "sh" },
	},
	-- { exe = "flake8" },
	-- {
	--   exe = "codespell",
	--   filetypes = { "javascript", "python" },
	-- },
})
