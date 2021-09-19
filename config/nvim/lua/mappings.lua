-- MAPPINGS

-- DOUBLE ESC
vim.api.nvim_set_keymap("t", "<Esc><Esc>", "<C-\\><C-n>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Esc><Esc>", ":lua DefaultState()<CR>", { noremap = true, silent = true })

-- TOGGLETERM
vim.api.nvim_set_keymap("n", "<F2>", ":ToggleTerm<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<F2>", "<Esc>:ToggleTerm<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("t", "<F2>", "<C-\\><C-n>:ToggleTerm<CR>", { noremap = true, silent = true })

-- RNVIMR
vim.api.nvim_set_keymap("n", "<F3>", "<CMD>RnvimrToggle<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<F3>", "<Esc><CMD>RnvimrToggle<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("t", "<F3>", "<C-\\><C-n><CMD>RnvimrToggle<CR>", { noremap = true, silent = true })

-- VENN.NVIM
require("plugin.configs.venn")
vim.api.nvim_set_keymap("n", "v", "<C-v>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-v>", ":lua toggle_venn()<CR>", { noremap = true })

-- M FOR MACROS && Q STAND FOR QUERY
vim.api.nvim_set_keymap("n", "M", "q", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "q", "<Nop>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "qv", "<CMD>e~/v<CR>", { noremap = true, silent = true })

-- CLOSE(QUIT + BUFFER DELETE)
vim.api.nvim_set_keymap("n", "<Space>c", ":w<CR>:bd<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Space>w", ":w<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Space>q", ":q<CR>", { noremap = true, silent = true })

-- ZENMODE
vim.api.nvim_set_keymap("n", "<Space><Space>", "<CMD>ZenMode<CR>", { noremap = true, silent = true })

-- WINDOW ZOOM
vim.api.nvim_set_keymap("n", "<C-w>z", "<C-w>|<C-w>_", { noremap = true, silent = true })

-- BETTER NAVIGATION
vim.api.nvim_set_keymap("n", "<C-h>", "<C-w>h", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-j>", "<C-w>j", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-k>", "<C-w>k", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-l>", "<C-w>l", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<C-h>", "<Esc><C-w>h", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<C-j>", "<Esc><C-w>j", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<C-k>", "<Esc><C-w>k", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<C-l>", "<Esc><C-w>l", { noremap = true, silent = true })
vim.api.nvim_set_keymap("t", "<C-h>", "<C-\\><C-n><C-w>h", { noremap = true, silent = true })
vim.api.nvim_set_keymap("t", "<C-j>", "<C-\\><C-n><C-w>j", { noremap = true, silent = true })
vim.api.nvim_set_keymap("t", "<C-k>", "<C-\\><C-n><C-w>k", { noremap = true, silent = true })
vim.api.nvim_set_keymap("t", "<C-l>", "<C-\\><C-n><C-w>l", { noremap = true, silent = true })
