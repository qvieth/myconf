---@diagnostic disable: trailing-space
---@diagnostic disable-next-line: trailing-space
---@diagnostic disable: undefined-global
-- double Esc terminal
vim.api.nvim_set_keymap('t','<Esc><Esc>',[[<C-\><C-n>]],{noremap=true,silent=true})

-- swap z and <C-w>
vim.api.nvim_set_keymap('n','<C-w>',[[z]],{noremap=true,silent=true})
vim.api.nvim_set_keymap('n','z',[[<C-w>]],{noremap=true,silent=true})

-- Telescope
vim.api.nvim_set_keymap('n','<C-P>',[[:Telescope<CR>]],{noremap=true,silent=true})

-- Floaterm
vim.api.nvim_set_keymap('n','<F2>',[[:FloatermToggle<CR>]],{noremap=true,silent=true})
vim.api.nvim_set_keymap('t','<F2>',[[<C-\><C-n>:FloatermToggle<CR>]],{noremap=true,silent=true})
vim.api.nvim_set_keymap('n','<F3>',[[:FloatermNew ranger<CR>]],{noremap=true,silent=true})

-- Material colorscheme toggle
vim.api.nvim_set_keymap('n','<Leader>ma',[[:lua require('material.functions').toggle_style()<CR>]],{noremap=true,silent=true})

--==============================================================================================================================
-- COC-NVIM

-- coc-explorer, coc-terminal
vim.api.nvim_set_keymap('n','<space>e',[[:CocCommand explorer<CR>]],{noremap=true,silent=true})
vim.api.nvim_set_keymap('n','<space>t',[[:CocCommand terminal.Toggle<CR>]],{noremap=true,silent=true})

-- coc-yank - yank history
vim.api.nvim_set_keymap('n','<space>y',':<C-u>CocList -A --normal yank<CR>',{noremap=true,silent=true})

-- coc docs scrolling
vim.cmd[[nnoremap <nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"]]
vim.cmd[[nnoremap <nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"]]
vim.cmd[[inoremap <nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"]]
vim.cmd[[inoremap <nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"]]
