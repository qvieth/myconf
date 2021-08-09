-- Packer Bootstraping
local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
  execute 'packadd packer.nvim'
end

-- Plugins
return require('packer').startup(
    function()
        use 'wbthomason/packer.nvim'
        use 'kyazdani42/nvim-web-devicons'
        -- THEMES
        use {'npxbr/gruvbox.nvim', requires = 'rktjmp/lush.nvim'}
        use 'marko-cerovac/material.nvim'
        use 'navarasu/onedark.nvim'
        -- ESSENTIALS
        use 'folke/which-key.nvim'
        use 'mhinz/vim-startify'
        use 'voldikss/vim-floaterm'
        use {'akinsho/nvim-bufferline.lua', requires = 'kyazdani42/nvim-web-devicons'}
        use {'nvim-telescope/telescope.nvim',requires={{'nvim-lua/popup.nvim'},{'nvim-lua/plenary.nvim'}}}
        use {'hoob3rt/lualine.nvim',requires={'kyazdani42/nvim-web-devicons',opt=true}}
        use {'glacambre/firenvim', run = function() vim.fn['firenvim#install'](0) end}
        use 'tpope/vim-surround'
        use 'windwp/nvim-autopairs'
        use 'tpope/vim-fugitive'
        use 'tpope/vim-commentary'
        use 'lukas-reineke/indent-blankline.nvim'
        -- CODING
        use {'neoclide/coc.nvim',branch='release'}
        use 'honza/vim-snippets'
        use {'turbio/bracey.vim',run='npm install --prefix server'}
        use 'mattn/emmet-vim'
        use {'dsznajder/vscode-es7-javascript-react-snippets',run='yarn install --frozen-lockfile && yarn compile'}
        use 'pangloss/vim-javascript'    
        use 'leafgarland/typescript-vim' 
        use 'maxmellon/vim-jsx-pretty'   
        use 'jparise/vim-graphql'        
        use {'prettier/vim-prettier',run='yarn install'}
        use 'psf/black'
        use 'cespare/vim-toml'
        -- MARKDOWN EDITING
        use 'vimwiki/vimwiki'
        use {'iamcco/markdown-preview.nvim',run='cd app && yarn install'}
        use 'mzlogin/vim-markdown-toc'
        use 'dpelle/vim-LanguageTool'
    end
)
