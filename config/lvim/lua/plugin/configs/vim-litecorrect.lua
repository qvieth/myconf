local M = function()
	vim.cmd([[
  augroup litecorrect
    autocmd!
    autocmd FileType markdown,mkd call litecorrect#init()
    autocmd FileType textile call litecorrect#init()
  augroup END
  ]])
end
return M
