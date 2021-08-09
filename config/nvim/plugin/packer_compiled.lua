-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/qvieth/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/qvieth/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/qvieth/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/qvieth/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/qvieth/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ale = {
    config = { "\27LJ\2\2{\0\0\2\0\a\0\r6\0\0\0009\0\1\0)\1\1\0=\1\2\0006\0\0\0009\0\1\0'\1\4\0=\1\3\0006\0\0\0009\0\1\0'\1\6\0=\1\5\0K\0\1\0\t ‚óè\21ale_sign_warning\t.‚óè\19ale_sign_error\20ale_disable_lsp\6g\bvim\0" },
    loaded = true,
    path = "/home/qvieth/.local/share/nvim/site/pack/packer/start/ale"
  },
  ["bracey.vim"] = {
    commands = { "Bracey" },
    loaded = false,
    needs_bufread = false,
    path = "/home/qvieth/.local/share/nvim/site/pack/packer/opt/bracey.vim"
  },
  ["calendar.vim"] = {
    loaded = true,
    path = "/home/qvieth/.local/share/nvim/site/pack/packer/start/calendar.vim"
  },
  ["coc.nvim"] = {
    loaded = true,
    path = "/home/qvieth/.local/share/nvim/site/pack/packer/start/coc.nvim"
  },
  ["emmet-vim"] = {
    loaded = true,
    path = "/home/qvieth/.local/share/nvim/site/pack/packer/start/emmet-vim"
  },
  firenvim = {
    loaded = true,
    path = "/home/qvieth/.local/share/nvim/site/pack/packer/start/firenvim"
  },
  ["glow.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/qvieth/.local/share/nvim/site/pack/packer/opt/glow.nvim"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/home/qvieth/.local/share/nvim/site/pack/packer/start/lualine.nvim"
  },
  ["markdown-preview.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/qvieth/.local/share/nvim/site/pack/packer/opt/markdown-preview.nvim"
  },
  ["nvcode-color-schemes.vim"] = {
    loaded = true,
    path = "/home/qvieth/.local/share/nvim/site/pack/packer/start/nvcode-color-schemes.vim"
  },
  ["nvim-web-devicons"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/qvieth/.local/share/nvim/site/pack/packer/opt/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/qvieth/.local/share/nvim/site/pack/packer/start/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/qvieth/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/qvieth/.local/share/nvim/site/pack/packer/start/popup.nvim"
  },
  rnvimr = {
    loaded = true,
    path = "/home/qvieth/.local/share/nvim/site/pack/packer/start/rnvimr"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/qvieth/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  ["toggleterm.nvim"] = {
    loaded = true,
    path = "/home/qvieth/.local/share/nvim/site/pack/packer/start/toggleterm.nvim"
  },
  ["twilight.nvim"] = {
    config = { "\27LJ\2\2w\0\0\3\0\6\0\t6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\4\0005\2\3\0=\2\5\1B\0\2\1K\0\1\0\fdimming\1\0\2\fcontext\3\1\15treesitter\1\1\0\1\nalpha\4≥ÊÃô\3≥Êå˛\3\nsetup\rtwilight\frequire\0" },
    loaded = true,
    path = "/home/qvieth/.local/share/nvim/site/pack/packer/start/twilight.nvim"
  },
  ["venn.nvim"] = {
    commands = { "VBox" },
    loaded = false,
    needs_bufread = false,
    path = "/home/qvieth/.local/share/nvim/site/pack/packer/opt/venn.nvim"
  },
  ["vim-caser"] = {
    loaded = true,
    path = "/home/qvieth/.local/share/nvim/site/pack/packer/start/vim-caser"
  },
  ["vim-colors-off"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/qvieth/.local/share/nvim/site/pack/packer/opt/vim-colors-off"
  },
  ["vim-commentary"] = {
    loaded = true,
    path = "/home/qvieth/.local/share/nvim/site/pack/packer/start/vim-commentary"
  },
  ["vim-easy-align"] = {
    config = { "\27LJ\2\2§\1\0\0\5\0\t\0\0176\0\0\0009\0\1\0009\0\2\0'\1\3\0'\2\4\0'\3\5\0005\4\6\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\1\a\0'\2\4\0'\3\5\0005\4\b\0B\0\5\1K\0\1\0\1\0\2\vsilent\1\fnoremap\1\6x\1\0\2\vsilent\1\fnoremap\1\22<Plug>(EasyAlign)\aga\6n\20nvim_set_keymap\bapi\bvim\0" },
    loaded = true,
    path = "/home/qvieth/.local/share/nvim/site/pack/packer/start/vim-easy-align"
  },
  ["vim-grammarous"] = {
    commands = { "GrammarousCheck" },
    loaded = false,
    needs_bufread = false,
    path = "/home/qvieth/.local/share/nvim/site/pack/packer/opt/vim-grammarous"
  },
  ["vim-litecorrect"] = {
    config = { "" },
    loaded = true,
    path = "/home/qvieth/.local/share/nvim/site/pack/packer/start/vim-litecorrect"
  },
  ["vim-markdown-toc"] = {
    loaded = false,
    needs_bufread = true,
    path = "/home/qvieth/.local/share/nvim/site/pack/packer/opt/vim-markdown-toc"
  },
  ["vim-pencil"] = {
    loaded = true,
    path = "/home/qvieth/.local/share/nvim/site/pack/packer/start/vim-pencil"
  },
  ["vim-prettier"] = {
    loaded = true,
    path = "/home/qvieth/.local/share/nvim/site/pack/packer/start/vim-prettier"
  },
  ["vim-snippets"] = {
    loaded = true,
    path = "/home/qvieth/.local/share/nvim/site/pack/packer/start/vim-snippets"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/home/qvieth/.local/share/nvim/site/pack/packer/start/vim-surround"
  },
  ["vim-wordy"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/qvieth/.local/share/nvim/site/pack/packer/opt/vim-wordy"
  },
  ["vim-yin-yang"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/qvieth/.local/share/nvim/site/pack/packer/opt/vim-yin-yang"
  },
  vimwiki = {
    loaded = true,
    path = "/home/qvieth/.local/share/nvim/site/pack/packer/start/vimwiki"
  },
  ["vscode-es7-javascript-react-snippets"] = {
    loaded = true,
    path = "/home/qvieth/.local/share/nvim/site/pack/packer/start/vscode-es7-javascript-react-snippets"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\2\2;\0\0\2\0\3\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\1K\0\1\0\nsetup\14which-key\frequire\0" },
    loaded = true,
    path = "/home/qvieth/.local/share/nvim/site/pack/packer/start/which-key.nvim"
  },
  yui = {
    loaded = false,
    needs_bufread = false,
    path = "/home/qvieth/.local/share/nvim/site/pack/packer/opt/yui"
  },
  ["zen-mode.nvim"] = {
    loaded = true,
    path = "/home/qvieth/.local/share/nvim/site/pack/packer/start/zen-mode.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: vim-easy-align
time([[Config for vim-easy-align]], true)
try_loadstring("\27LJ\2\2§\1\0\0\5\0\t\0\0176\0\0\0009\0\1\0009\0\2\0'\1\3\0'\2\4\0'\3\5\0005\4\6\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\1\a\0'\2\4\0'\3\5\0005\4\b\0B\0\5\1K\0\1\0\1\0\2\vsilent\1\fnoremap\1\6x\1\0\2\vsilent\1\fnoremap\1\22<Plug>(EasyAlign)\aga\6n\20nvim_set_keymap\bapi\bvim\0", "config", "vim-easy-align")
time([[Config for vim-easy-align]], false)
-- Config for: twilight.nvim
time([[Config for twilight.nvim]], true)
try_loadstring("\27LJ\2\2w\0\0\3\0\6\0\t6\0\0\0'\1\1\0B\0\2\0029\0\2\0005\1\4\0005\2\3\0=\2\5\1B\0\2\1K\0\1\0\fdimming\1\0\2\fcontext\3\1\15treesitter\1\1\0\1\nalpha\4≥ÊÃô\3≥Êå˛\3\nsetup\rtwilight\frequire\0", "config", "twilight.nvim")
time([[Config for twilight.nvim]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
try_loadstring("\27LJ\2\2;\0\0\2\0\3\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\1K\0\1\0\nsetup\14which-key\frequire\0", "config", "which-key.nvim")
time([[Config for which-key.nvim]], false)
-- Config for: ale
time([[Config for ale]], true)
try_loadstring("\27LJ\2\2{\0\0\2\0\a\0\r6\0\0\0009\0\1\0)\1\1\0=\1\2\0006\0\0\0009\0\1\0'\1\4\0=\1\3\0006\0\0\0009\0\1\0'\1\6\0=\1\5\0K\0\1\0\t ‚óè\21ale_sign_warning\t.‚óè\19ale_sign_error\20ale_disable_lsp\6g\bvim\0", "config", "ale")
time([[Config for ale]], false)
-- Config for: vim-litecorrect
time([[Config for vim-litecorrect]], true)

time([[Config for vim-litecorrect]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file VBox lua require("packer.load")({'venn.nvim'}, { cmd = "VBox", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Bracey lua require("packer.load")({'bracey.vim'}, { cmd = "Bracey", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file GrammarousCheck lua require("packer.load")({'vim-grammarous'}, { cmd = "GrammarousCheck", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType markdown ++once lua require("packer.load")({'vim-markdown-toc', 'markdown-preview.nvim', 'vim-wordy', 'glow.nvim'}, { ft = "markdown" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
vim.cmd("augroup END")
vim.cmd [[augroup filetypedetect]]
time([[Sourcing ftdetect script at: /home/qvieth/.local/share/nvim/site/pack/packer/opt/vim-markdown-toc/ftdetect/markdown.vim]], true)
vim.cmd [[source /home/qvieth/.local/share/nvim/site/pack/packer/opt/vim-markdown-toc/ftdetect/markdown.vim]]
time([[Sourcing ftdetect script at: /home/qvieth/.local/share/nvim/site/pack/packer/opt/vim-markdown-toc/ftdetect/markdown.vim]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
