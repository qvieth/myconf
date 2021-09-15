  " __ ___   _(_) ___| |_| |__   (_)_ __ (_) |___   _(_)_ __ ___  
 " / _` \ \ / / |/ _ \ __| '_ \  | | '_ \| | __\ \ / / | '_ ` _ \ 
" | (_| |\ V /| |  __/ |_| | | | | | | | | | |_ \ V /| | | | | | |
 " \__, | \_/ |_|\___|\__|_| |_| |_|_| |_|_|\__(_)_/ |_|_| |_| |_|
    " |_|                                                         
" ==============================================================================================================================================
lua require "init"

" Firenvim

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

if exists('g:started_by_firenvim') && g:started_by_firenvim
    " general options
    set laststatus=0 noruler noshowcmd
    colorscheme yang
    set guifont=monospace:h16
endif
