return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },
  {
    "vimwiki/vimwiki",
    lazy = false,
    init = function()
      vim.cmd "set nocompatible"
      vim.cmd "filetype plugin indent on"
      vim.cmd "syntax on"
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
    end,
  },
  {
    "preservim/vim-pencil",
    lazy = false,
    init = function()
      vim.cmd [[
      let g:pencil#wrapModeDefault = 'soft' 
      let g:pencil#autoformat = 0 
      let g:pencil#textwidth = 74
      ]]
    end,
  },
  -- These are some examples, uncomment them if you want to see them work!
  -- {
  --   "neovim/nvim-lspconfig",
  --   config = function()
  --     require("nvchad.configs.lspconfig").defaults()
  --     require "configs.lspconfig"
  --   end,
  -- },
  --
  -- {
  -- 	"williamboman/mason.nvim",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"lua-language-server", "stylua",
  -- 			"html-lsp", "css-lsp" , "prettier"
  -- 		},
  -- 	},
  -- },
  --
  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },
}
