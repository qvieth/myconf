-- Packer BootstrapingLE
local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"

if fn.empty(fn.glob(install_path)) > 0 then
	fn.system({ "git", "clone", "https://github.com/wbthomason/packer.nvim", install_path })
	execute("packadd packer.nvim")
end

-- Packer Install
return require("packer").startup(function()
	use("wbthomason/packer.nvim")
	use({ "kyazdani42/nvim-web-devicons", opt = true })

	--THEMES=================================================================================================================================
	-----------------------------------------------------------------------------------------------------------------------------------------
	use("christianchiarulli/nvcode-color-schemes.vim")
	use({ "pbrisbin/vim-colors-off", opt = true })
	use({ "pgdouyon/vim-yin-yang", opt = true })
	use({ "cideM/yui", opt = true })

	--ESSENTIALS=============================================================================================================================
	-----------------------------------------------------------------------------------------------------------------------------------------
	use({
		"glacambre/firenvim",
		run = function()
			vim.fn["firenvim#install"](0)
		end,
	})
	use({
		"folke/which-key.nvim",
		config = function()
			require("which-key").setup({})
		end,
	})
	use("arthurxavierx/vim-caser")
	use({
		"akinsho/toggleterm.nvim",
		config = require("toggleterm").setup({
			open_mapping = [[<c-t>]],
			persist_size = false,
			size = 9,
			direction = "float",
		}),
	})
	use("kevinhwang91/rnvimr")
	use({ "hoob3rt/lualine.nvim", config = require("lualine").setup({ options = { theme = vim.g.colors_name } }) })
	use({
		"junegunn/vim-easy-align",
		config = function()
			vim.api.nvim_set_keymap("n", "ga", "<Plug>(EasyAlign)", { noremap = false, silent = false })
			vim.api.nvim_set_keymap("x", "ga", "<Plug>(EasyAlign)", { noremap = false, silent = false })
		end,
	})
	use("tpope/vim-commentary")
	use("tpope/vim-surround")
	use({ "nvim-telescope/telescope.nvim", requires = { { "nvim-lua/popup.nvim" }, { "nvim-lua/plenary.nvim" } } })
	use({
		"folke/zen-mode.nvim",
		config = require("zen-mode").setup({
			window = {
				backdrop = 1,
				width = 0.8,
				options = { number = false, relativenumber = false, cursorline = false },
			},
		}),
	})
	use({
		"folke/twilight.nvim",
		config = function()
			require("twilight").setup({
				dimming = {
					alpha = 0.15, -- amount of dimming
				},
				context = 1, -- amount of lines we will try to show around the current line
				treesitter = false, -- use treesitter when available for the filetype
			})
		end,
	})
	--SOFT-CODING============================================================================================================================
	-----------------------------------------------------------------------------------------------------------------------------------------
	use({ "neoclide/coc.nvim", branch = "release" })
	use({ "prettier/vim-prettier", run = "yarn install" })
	use({
		"dsznajder/vscode-es7-javascript-react-snippets",
		run = "yarn install --frozen-lockfile && yarn compile",
	})
	use("honza/vim-snippets")
	use("mattn/emmet-vim")
	use({ "turbio/bracey.vim", run = "npm install --prefix server", cmd = "Bracey" })

	--MARKDOWN-EDITING=======================================================================================================================
	-----------------------------------------------------------------------------------------------------------------------------------------
	use({
		"dense-analysis/ale",
		config = function()
			vim.g.ale_disable_lsp = 1
			vim.g.ale_sign_error = ".●"
			vim.g.ale_sign_warning = " ●"
		end,
	})
	use("vimwiki/vimwiki")
	use("preservim/vim-pencil")
	use({
		"reedes/vim-litecorrect",
		config = vim.cmd(
			[[ augroup litecorrect autocmd! | autocmd FileType markdown,mkd call litecorrect#init() | autocmd FileType textile call litecorrect#init() | augroup END ]]
		),
	})
	use({ "iamcco/markdown-preview.nvim", run = "cd app && yarn install", ft = "markdown" })
	use({ "mzlogin/vim-markdown-toc", ft = "markdown" })
	use({ "jbyuki/venn.nvim", cmd = "VBox" })
	use({ "reedes/vim-wordy", ft = "markdown" })
	use({ "rhysd/vim-grammarous", cmd = "GrammarousCheck" })
	use({ "npxbr/glow.nvim", ft = { "markdown" } })
	use("itchyny/calendar.vim")
end)
