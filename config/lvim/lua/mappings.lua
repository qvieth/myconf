-- MAPPINGS

-- VENN.NVIM
require("plugin.configs.venn")
lvim.keys.normal_mode["v"] = "<C-v>"
lvim.keys.normal_mode["<C-v>"] = ":lua toggle_venn()<CR>"

-- DOUBLE ESC
lvim.keys.term_mode["<Esc><Esc>"] = "<C-\\><C-n>"
lvim.keys.normal_mode["<Esc><Esc>"] = ":lua DefaultState() <CR>"

-- NVIMTREE
lvim.keys.normal_mode["<F1>"] = ":NvimTreeToggle<CR>"
lvim.keys.insert_mode["<F1>"] = "<Esc>:NvimTreeToggle<CR>"
lvim.keys.term_mode["<F1>"] = "<C-\\><C-n>:NvimTreeToggle<CR>"

-- TOGGLETERM
lvim.builtin.terminal.open_mapping = "<F2>"

-- RNVIMR
lvim.keys.normal_mode["<F3>"] = ":RnvimrToggle<CR>"
lvim.keys.insert_mode["<F3>"] = "<Esc>:RnvimrToggle<CR>"
lvim.keys.term_mode["<F3>"] = "<C-\\><C-n>:RnvimrToggle<CR>"

-- M FOR MACROS && Q FOR QUERY
lvim.keys.normal_mode["M"] = "q"
lvim.keys.normal_mode["q"] = "<Nop>"
lvim.keys.normal_mode["qv"] = ":e ~/mynote/v<CR>"
lvim.keys.normal_mode["qb"] = ":e ~/myblog/content/posts/<CR>"

-- ZENMODE
lvim.keys.normal_mode["<Space><Space>"] = ":ZenMode<CR>"

-- WINDOW ZOOM
lvim.keys.normal_mode["<C-w>z"] = "<C-w>|<C-w>_"
