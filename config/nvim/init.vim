  " __ ___   _(_) ___| |_| |__   (_)_ __ (_) |___   _(_)_ __ ___  
 " / _` \ \ / / |/ _ \ __| '_ \  | | '_ \| | __\ \ / / | '_ ` _ \ 
" | (_| |\ V /| |  __/ |_| | | | | | | | | | |_ \ V /| | | | | | |
 " \__, | \_/ |_|\___|\__|_| |_| |_|_| |_|_|\__(_)_/ |_|_| |_| |_|
    " |_|                                                         
" ==============================================================================================================================================
lua require "mappings" 
lua require "options" 
lua require "plugins"

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

lua << EOF
-- COC.NVIM ====================================================================================================================================
vim.g.coc_start_at_startup = false
vim.g.coc_snippet_next = '<tab>'
vim.g.coc_global_extensions = {
  'coc-marketplace',
  'coc-snippets',
  'coc-tabnine',
  'coc-word',
  'coc-emoji',
  'coc-lua',
  'coc-lua',
  'coc-tsserver',
  'coc-pyright',
}

local map = vim.api.nvim_set_keymap
local opt = { noremap = true, silent = true }
-- Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
-- Use `[g` and `]g` to navigate diagnostics
map("n", "[g", "<Plug>(coc-diagnostic-prev)", opt) 
map("n", "]g", "<Plug>(coc-diagnostic-next)", opt)

-- GoTo code navigation.
map("n", "gd", "<Plug>(coc-definition)", opt)
map("n", "gy", "<Plug>(coc-type-definition)", opt)
map("n", "gi", "<Plug>(coc-implementation)", opt)
map("n", "gr", "<Plug>(coc-references)", opt)
--
-- applying codeAction to the current buffer.
map("n", "<Leader>ac", "<Plug>(coc-codeaction)", opt) 
-- apply autoFix to problem on the current line.
map("n", "<Leader>qf", "<Plug>(coc-fix-current)", opt) 
-- symbol renaming
map("n", "<Leader>rn", "<Plug>(coc-rename)", opt)

-- coc docs scrolling
vim.cmd[[nnoremap <nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"]]
vim.cmd[[nnoremap <nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"]]
vim.cmd[[inoremap <nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"]]
vim.cmd[[inoremap <nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"]]

EOF
" ==============================================================================================================================================

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin before putting this into your config.
inoremap <silent><expr> <TAB> pumvisible() ? "\<C-n>" : <SID>check_back_space() ? "\<TAB>" : coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
