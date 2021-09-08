-- ADDITIONAL PLUGINS
local conf = require("plugins.config")

lvim.plugins = {
	--THEMES=================================================================================================================================
	-----------------------------------------------------------------------------------------------------------------------------------------
	"ChristianChiarulli/nvcode-color-schemes.vim",
	"pbrisbin/vim-colors-off",
	"pgdouyon/vim-yin-yang",
	"cideM/yui",
	-- "LunarVim/Colorschemes",

	--ESSENTIALS=============================================================================================================================
	-----------------------------------------------------------------------------------------------------------------------------------------
	{
		"nacro90/numb.nvim",
		event = "BufRead",
		config = conf.numb,
	},
	{
		"rcarriga/nvim-notify",
		event = "BufRead",
		config = conf.notify,
	},
	"arthurxavierx/vim-caser",
	{
		"junegunn/vim-easy-align",
		config = conf.vim_easy_align,
	},
	{
		"kevinhwang91/rnvimr",
		config = conf.rnvimr,
	},
	{ "tpope/vim-surround", keys = { "c", "d", "y" } },
	{ "tpope/vim-repeat" },
	{
		"wfxr/minimap.vim",
		run = "brew install code-minimap",
		config = conf.minimap,
	},
	{
		"karb94/neoscroll.nvim",
		event = "WinScrolled",
		config = conf.neoscroll,
	},
	{
		"folke/zen-mode.nvim",
		cmd = "ZenMode",
		config = conf.zen_mode,
	},
	-- {
	-- 	"folke/twilight.nvim",
	-- 	config = conf.twilight,
	-- },

	--CODING-GENERAL=========================================================================================================================
	-----------------------------------------------------------------------------------------------------------------------------------------
	{
		"simrat39/symbols-outline.nvim",
		cmd = "SymbolsOutline",
		config = conf.symbols_outline,
	},
	{ "michaelb/sniprun", run = "bash install.sh", cmd = "SnipRun" },
	{
		"ray-x/lsp_signature.nvim",
		config = function()
			require("lsp_signature").setup()
		end,
		event = "InsertEnter",
	},
	"p00f/nvim-ts-rainbow",
	{
		"lukas-reineke/indent-blankline.nvim",
		event = "BufRead",
		setup = conf.indent_blankline,
	},

	--CODING-FE==============================================================================================================================
	-----------------------------------------------------------------------------------------------------------------------------------------
	{
		"mattn/emmet-vim",
		event = "InsertEnter",
	},
	{
		"windwp/nvim-ts-autotag",
		config = function()
			lvim.builtin.treesitter.autotag.enable = true
		end,
	},
	{ "turbio/bracey.vim", run = "npm install --prefix server", cmd = "Bracey" },
	{
		"norcalli/nvim-colorizer.lua",
		config = conf.colorizer,
	},

	--CODING-COMPLETION======================================================================================================================
	-----------------------------------------------------------------------------------------------------------------------------------------
	{
		"SirVer/ultisnips",
		config = conf.ultisnips,
	},
	{ "honza/vim-snippets", event = "InsertEnter" },
	{
		"dsznajder/vscode-es7-javascript-react-snippets",
		run = "yarn install --frozen-lockfile && yarn compile",
		event = "InsertEnter",
	},
	--WRITING================================================================================================================================
	-----------------------------------------------------------------------------------------------------------------------------------------
	"vimwiki/vimwiki",
	{ "iamcco/markdown-preview.nvim", run = "cd app && yarn install", cmd = "MarkdownPreview" },
	{ "mzlogin/vim-markdown-toc", ft = "markdown" },
	{ "jbyuki/venn.nvim", cmd = "VBox" },
	{ "rhysd/vim-grammarous", cmd = "GrammarousCheck" },
	{ "preservim/vim-pencil", ft = "markdown" },
	{ "reedes/vim-wordy", ft = "markdown" },
	{ "npxbr/glow.nvim", cmd = "Glow" },
}
