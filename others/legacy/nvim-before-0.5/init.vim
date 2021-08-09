" ========== Vim Plug ==========
call plug#begin()

" ColorScheme
Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'
Plug 'cocopon/iceberg.vim'
Plug 'tomasr/molokai' 
Plug 'dracula/vim'

" Disabled in Firenvim
if !exists('g:started_by_firenvim')
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
    Plug 'mzlogin/vim-markdown-toc'
    Plug 'junegunn/goyo.vim'
    Plug 'mhinz/vim-startify'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'tpope/vim-fugitive'
    Plug 'vimwiki/vimwiki'
    Plug 'voldikss/vim-floaterm'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'turbio/bracey.vim', {'do': 'npm install --prefix server'}
    Plug 'luochen1990/rainbow'
    Plug 'pangloss/vim-javascript'    
    Plug 'leafgarland/typescript-vim' 
    Plug 'maxmellon/vim-jsx-pretty'   
    Plug 'jparise/vim-graphql'        
    Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
endif

" non-ColorScheme
Plug 'dpelle/vim-LanguageTool'
Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }
Plug 'dsznajder/vscode-es7-javascript-react-snippets', { 'do': 'yarn install --frozen-lockfile && yarn compile' }
Plug 'tpope/vim-commentary'
Plug 'jiangmiao/auto-pairs' 
Plug 'Yggdroot/indentLine'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-surround'

call plug#end()

" ========== Basic Settings ==========

set number
set ruler
colorscheme gruvbox
set cursorline
set nowrap
set softtabstop=4
set clipboard+=unnamedplus
set termguicolors
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab
set timeoutlen=1000 ttimeoutlen=0
" coc - Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable delays and poor user experience
set updatetime=300
" TextEdit might fail if hidden is not set.
set hidden
" Don't pass messages to |ins-completion-menu|
set shortmess+=c
set wildignorecase
set ignorecase
set smartcase
set incsearch
" better alternative to set autochdir 
" autocmd BufEnter * silent! lcd %:p:h 

" ========== Configs and Functions ==========

" coc.nvim - vscode-like tabbing
inoremap <silent><expr> <TAB>
  \ pumvisible() ? coc#_select_confirm() :
  \ coc#expandableOrJumpable() ?
  \ "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
  \ <SID>check_back_space() ? "\<TAB>" :
  \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'

" Coc-Extension
let g:coc_global_extensions = [
      \'coc-marketplace',
      \'coc-snippets',
      \'coc-yaml',
      \'coc-tsserver',
      \'coc-pyright',
      \'coc-json', 
      \'coc-docker', 
      \'coc-html',
      \'coc-css',
      \'coc-yank',
      \'coc-tabnine',
      \'coc-terminal',
      \'coc-explorer'
      \]

" CocExplorer
autocmd ColorScheme *
  \ hi CocExplorerNormalFloatBorder guifg=#414347 guibg=#272B34
  \ | hi CocExplorerNormalFloat guibg=#272B34
  \ | hi CocExplorerSelectUI guibg=blue

" Add Titlecase function
function! TwiddleCase(str)
  if a:str ==# toupper(a:str)
    let result = tolower(a:str)
  elseif a:str ==# tolower(a:str)
    let result = substitute(a:str,'\(\<\w\+\>\)', '\u\1', 'g')
  else
    let result = toupper(a:str)
  endif
  return result
endfunction
vnoremap <S-u> y:call setreg('', TwiddleCase(@"), getregtype(''))<CR>gv""Pgv

" Floaterm
let g:floaterm_width = 0.6
let g:floaterm_height = 0.7
let g:floaterm_position = 'topright'
let g:floaterm_title = 'nvim: $1/$2'
hi FloatermBorder guibg=none

" Firenvim
if exists('g:started_by_firenvim') && g:started_by_firenvim
    " general options
    set laststatus=0 noruler noshowcmd
    colorscheme zellner
endif
let g:firenvim_config = { 
    \ 'globalSettings': {
        \ 'alt': 'all',
    \  },
    \ 'localSettings': {
        \ '.*': {
            \ 'cmdline': 'firenvim',
            \ 'content': 'text',
            \ 'priority': 0,
            \ 'selector': 'textarea',
            \ 'takeover': 'never',
        \ },
    \ }
\ }

let g:rainbow_active = 0 "set to 0 if you want to enable it later via :RainbowToggle

" Airline
let g:airline_theme='tomorrow'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#formatter = 'jsformatter'
if !exists('g:airline_symbols')
            let g:airline_symbols = {}
endif

" Powerline Symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰ '
let g:airline_symbols.maxlinenr = ' '
let g:airline_symbols.dirty='⚡'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline#extensions#tabline#tab_nr_type = 1 " tab number
let g:airline#extensions#tabline#buffer_idx_mode = 1

" VimWiki
let g:vimwiki_toc_header_level=2
let g:vimwiki_list = [{
	\ 'path': '~/mynote',
	\ 'template_path': '~/vimwiki/templates/',
	\ 'template_default': 'default',
	\ 'syntax': 'markdown',
	\ 'ext': '.md',
	\ 'path_html': '~/mynote_site_html/',
	\ 'custom_wiki2html': 'vimwiki_markdown',
	\ 'template_ext': '.tpl'},
    \ {'path': '~/mynote2/'},
    \ {'path': '~/mytest/'}]
set nocompatible
filetype plugin on

" ========== Key Mappings ==========

" Floaterm
nnoremap   <silent>   <F2>   :FloatermToggle<CR>
tnoremap   <silent>   <F2>   <C-\><C-n>:FloatermToggle<CR>
nmap <F3>    :FloatermNew ranger<CR>
nmap <F3> :FloatermNew ranger<CR>
nnoremap   <silent>   <F7>    :FloatermNew<CR>
tnoremap   <silent>   <F7>    <C-\><C-n>:FloatermNew<CR>
nnoremap   <silent>   <F8>    :FloatermPrev<CR>
tnoremap   <silent>   <F8>    <C-\><C-n>:FloatermPrev<CR>
nnoremap   <silent>   <F9>    :FloatermNext<CR>
tnoremap   <silent>   <F9>    <C-\><C-n>:FloatermNext<CR>

" FZF
nmap <C-P> :Files<CR>

" Esc Terminal
tnoremap <Esc> <C-\><C-n>

" Coc Docs Scrolling
nnoremap <nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
nnoremap <nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
inoremap <nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
inoremap <nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"

" swap z and C-w
noremap <C-w> z
noremap z <C-w>

" swap S-v and v
noremap <S-v> v
noremap v <S-v>


" Remap keys for applying CodeAction to the current line.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" code navigation - jumping around the code to figure out where code is being defined and referenced from
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gt <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" yank history
nnoremap <silent> <space>y  :<C-u>CocList -A --normal yank<cr>

" coc-explorer, coc-terminal
nnoremap <space>e :CocCommand explorer<CR>
nnoremap <space>t :CocCommand terminal.Toggle<CR>

" double esc for no highlight
nnoremap <esc><esc> :noh<return><esc>
