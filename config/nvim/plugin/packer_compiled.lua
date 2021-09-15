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
    config = { "\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    path = "/home/qvieth/.local/share/nvim/site/pack/packer/start/ale"
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
    config = { "\27LJ\2\2ô\1\0\0\6\0\v\0\0206\0\0\0006\1\1\0'\2\2\0B\0\3\3\14\0\0\0X\2\1ÄK\0\1\0006\2\1\0'\3\2\0B\2\2\0029\2\3\0025\3\t\0005\4\a\0006\5\4\0009\5\5\0059\5\6\5=\5\b\4=\4\n\3B\2\2\1K\0\1\0\foptions\1\0\0\ntheme\1\0\0\16colors_name\6g\bvim\nsetup\flualine\frequire\npcall\0" },
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
    loaded = true,
    path = "/home/qvieth/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
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
    config = { "\27LJ\2\2x\0\0\2\0\5\0\r6\0\0\0009\0\1\0)\1\1\0=\1\2\0006\0\0\0009\0\1\0)\1\1\0=\1\3\0006\0\0\0009\0\1\0)\1\1\0=\1\4\0K\0\1\0\21rnvimr_bw_enable\23rnvimr_pick_enable\23rnvimr_draw_border\6g\bvim\0" },
    loaded = true,
    path = "/home/qvieth/.local/share/nvim/site/pack/packer/start/rnvimr"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/qvieth/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  ["toggleterm.nvim"] = {
    config = { "\27LJ\2\2ô\1\0\0\4\0\5\0\0146\0\0\0006\1\1\0'\2\2\0B\0\3\3\14\0\0\0X\2\1ÄK\0\1\0006\2\1\0'\3\2\0B\2\2\0029\2\3\0025\3\4\0B\2\2\1K\0\1\0\1\0\4\14direction\nfloat\17persist_size\1\tsize\3\t\17open_mapping\n<c-t>\nsetup\15toggleterm\frequire\npcall\0" },
    loaded = true,
    path = "/home/qvieth/.local/share/nvim/site/pack/packer/start/toggleterm.nvim"
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
    loaded = true,
    path = "/home/qvieth/.local/share/nvim/site/pack/packer/start/vim-colors-off"
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
    config = { "\27LJ\2\2«\1\0\0\2\0\3\0\0056\0\0\0009\0\1\0'\1\2\0B\0\2\1K\0\1\0ß\1  augroup litecorrect\n    autocmd!\n    autocmd FileType markdown,mkd call litecorrect#init()\n    autocmd FileType textile call litecorrect#init()\n  augroup END\n  \bcmd\bvim\0" },
    loaded = true,
    path = "/home/qvieth/.local/share/nvim/site/pack/packer/start/vim-litecorrect"
  },
  ["vim-markdown-toc"] = {
    loaded = false,
    needs_bufread = true,
    path = "/home/qvieth/.local/share/nvim/site/pack/packer/opt/vim-markdown-toc"
  },
  ["vim-pencil"] = {
    config = { "\27LJ\2\2ä\1\0\0\2\0\3\0\0056\0\0\0009\0\1\0'\1\2\0B\0\2\1K\0\1\0k  let g:pencil#wrapModeDefault = 'hard'\n  let g:pencil#autoformat = 0\n  let g:pencil#textwidth = 74\n  \bcmd\bvim\0" },
    loaded = true,
    path = "/home/qvieth/.local/share/nvim/site/pack/packer/start/vim-pencil"
  },
  ["vim-prettier"] = {
    loaded = true,
    path = "/home/qvieth/.local/share/nvim/site/pack/packer/start/vim-prettier"
  },
  ["vim-repeat"] = {
    loaded = true,
    path = "/home/qvieth/.local/share/nvim/site/pack/packer/start/vim-repeat"
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
    loaded = true,
    path = "/home/qvieth/.local/share/nvim/site/pack/packer/start/vim-yin-yang"
  },
  vimwiki = {
    config = { "\27LJ\2\2‚\5\0\0\3\0\n\0\0216\0\0\0009\0\1\0)\1\0\0=\1\2\0006\0\0\0009\0\1\0004\1\a\0005\2\4\0>\2\1\0015\2\5\0>\2\2\0015\2\6\0>\2\3\0015\2\a\0>\2\4\0015\2\b\0>\2\5\0015\2\t\0>\2\6\1=\1\3\0K\0\1\0\1\0\1\tpath\14~/mywiki/\1\0\1\tpath\16~/mysecret/\1\0\1\tpath\15~/mydraft/\1\0\b\21custom_wiki2html\21vimwiki_markdown\bext\b.md\14path_html\24~/mynote_site_html/\tpath\r~/myblog\21template_default\fdefault\vsyntax\rmarkdown\18template_path\25~/vimwiki/templates/\17template_ext\t.tpl\1\0\b\21custom_wiki2html\21vimwiki_markdown\bext\b.md\14path_html\24~/mynote_site_html/\tpath\16~/myarchive\21template_default\fdefault\vsyntax\rmarkdown\18template_path\25~/vimwiki/templates/\17template_ext\t.tpl\1\0\b\21custom_wiki2html\21vimwiki_markdown\bext\b.md\14path_html\24~/mynote_site_html/\tpath\r~/mynote\21template_default\fdefault\vsyntax\rmarkdown\18template_path\25~/vimwiki/templates/\17template_ext\t.tpl\17vimwiki_list\23vimwiki_global_ext\6g\bvim\0" },
    loaded = true,
    path = "/home/qvieth/.local/share/nvim/site/pack/packer/start/vimwiki"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\2\2;\0\0\2\0\3\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\1K\0\1\0\nsetup\14which-key\frequire\0" },
    loaded = true,
    path = "/home/qvieth/.local/share/nvim/site/pack/packer/start/which-key.nvim"
  },
  yui = {
    loaded = true,
    path = "/home/qvieth/.local/share/nvim/site/pack/packer/start/yui"
  },
  ["zen-mode.nvim"] = {
    config = { "\27LJ\2\2©\2\0\0\6\0\17\0\0236\0\0\0006\1\1\0'\2\2\0B\0\3\3\14\0\0\0X\2\1ÄK\0\1\0009\2\3\0015\3\a\0005\4\4\0005\5\5\0=\5\6\4=\4\b\0035\4\n\0005\5\t\0=\5\v\0045\5\f\0=\5\r\0045\5\14\0=\5\15\4=\4\16\3B\2\2\1K\0\1\0\fplugins\rtwilight\1\0\1\fenabled\2\ttmux\1\0\1\fenabled\1\rgitsigns\1\0\0\1\0\1\fenabled\1\vwindow\1\0\0\foptions\1\0\3\15signcolumn\ano\vnumber\1\19relativenumber\1\1\0\2\nwidth\4ö≥ÊÃ\tô≥¶ˇ\3\rbackdrop\4√Î£·\5èÖ∑ˇ\3\nsetup\rzen-mode\frequire\npcall\0" },
    loaded = true,
    path = "/home/qvieth/.local/share/nvim/site/pack/packer/start/zen-mode.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: toggleterm.nvim
time([[Config for toggleterm.nvim]], true)
try_loadstring("\27LJ\2\2ô\1\0\0\4\0\5\0\0146\0\0\0006\1\1\0'\2\2\0B\0\3\3\14\0\0\0X\2\1ÄK\0\1\0006\2\1\0'\3\2\0B\2\2\0029\2\3\0025\3\4\0B\2\2\1K\0\1\0\1\0\4\14direction\nfloat\17persist_size\1\tsize\3\t\17open_mapping\n<c-t>\nsetup\15toggleterm\frequire\npcall\0", "config", "toggleterm.nvim")
time([[Config for toggleterm.nvim]], false)
-- Config for: zen-mode.nvim
time([[Config for zen-mode.nvim]], true)
try_loadstring("\27LJ\2\2©\2\0\0\6\0\17\0\0236\0\0\0006\1\1\0'\2\2\0B\0\3\3\14\0\0\0X\2\1ÄK\0\1\0009\2\3\0015\3\a\0005\4\4\0005\5\5\0=\5\6\4=\4\b\0035\4\n\0005\5\t\0=\5\v\0045\5\f\0=\5\r\0045\5\14\0=\5\15\4=\4\16\3B\2\2\1K\0\1\0\fplugins\rtwilight\1\0\1\fenabled\2\ttmux\1\0\1\fenabled\1\rgitsigns\1\0\0\1\0\1\fenabled\1\vwindow\1\0\0\foptions\1\0\3\15signcolumn\ano\vnumber\1\19relativenumber\1\1\0\2\nwidth\4ö≥ÊÃ\tô≥¶ˇ\3\rbackdrop\4√Î£·\5èÖ∑ˇ\3\nsetup\rzen-mode\frequire\npcall\0", "config", "zen-mode.nvim")
time([[Config for zen-mode.nvim]], false)
-- Config for: ale
time([[Config for ale]], true)
try_loadstring("\27LJ\2\2\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "ale")
time([[Config for ale]], false)
-- Config for: vimwiki
time([[Config for vimwiki]], true)
try_loadstring("\27LJ\2\2‚\5\0\0\3\0\n\0\0216\0\0\0009\0\1\0)\1\0\0=\1\2\0006\0\0\0009\0\1\0004\1\a\0005\2\4\0>\2\1\0015\2\5\0>\2\2\0015\2\6\0>\2\3\0015\2\a\0>\2\4\0015\2\b\0>\2\5\0015\2\t\0>\2\6\1=\1\3\0K\0\1\0\1\0\1\tpath\14~/mywiki/\1\0\1\tpath\16~/mysecret/\1\0\1\tpath\15~/mydraft/\1\0\b\21custom_wiki2html\21vimwiki_markdown\bext\b.md\14path_html\24~/mynote_site_html/\tpath\r~/myblog\21template_default\fdefault\vsyntax\rmarkdown\18template_path\25~/vimwiki/templates/\17template_ext\t.tpl\1\0\b\21custom_wiki2html\21vimwiki_markdown\bext\b.md\14path_html\24~/mynote_site_html/\tpath\16~/myarchive\21template_default\fdefault\vsyntax\rmarkdown\18template_path\25~/vimwiki/templates/\17template_ext\t.tpl\1\0\b\21custom_wiki2html\21vimwiki_markdown\bext\b.md\14path_html\24~/mynote_site_html/\tpath\r~/mynote\21template_default\fdefault\vsyntax\rmarkdown\18template_path\25~/vimwiki/templates/\17template_ext\t.tpl\17vimwiki_list\23vimwiki_global_ext\6g\bvim\0", "config", "vimwiki")
time([[Config for vimwiki]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\2ô\1\0\0\6\0\v\0\0206\0\0\0006\1\1\0'\2\2\0B\0\3\3\14\0\0\0X\2\1ÄK\0\1\0006\2\1\0'\3\2\0B\2\2\0029\2\3\0025\3\t\0005\4\a\0006\5\4\0009\5\5\0059\5\6\5=\5\b\4=\4\n\3B\2\2\1K\0\1\0\foptions\1\0\0\ntheme\1\0\0\16colors_name\6g\bvim\nsetup\flualine\frequire\npcall\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: rnvimr
time([[Config for rnvimr]], true)
try_loadstring("\27LJ\2\2x\0\0\2\0\5\0\r6\0\0\0009\0\1\0)\1\1\0=\1\2\0006\0\0\0009\0\1\0)\1\1\0=\1\3\0006\0\0\0009\0\1\0)\1\1\0=\1\4\0K\0\1\0\21rnvimr_bw_enable\23rnvimr_pick_enable\23rnvimr_draw_border\6g\bvim\0", "config", "rnvimr")
time([[Config for rnvimr]], false)
-- Config for: vim-litecorrect
time([[Config for vim-litecorrect]], true)
try_loadstring("\27LJ\2\2«\1\0\0\2\0\3\0\0056\0\0\0009\0\1\0'\1\2\0B\0\2\1K\0\1\0ß\1  augroup litecorrect\n    autocmd!\n    autocmd FileType markdown,mkd call litecorrect#init()\n    autocmd FileType textile call litecorrect#init()\n  augroup END\n  \bcmd\bvim\0", "config", "vim-litecorrect")
time([[Config for vim-litecorrect]], false)
-- Config for: vim-pencil
time([[Config for vim-pencil]], true)
try_loadstring("\27LJ\2\2ä\1\0\0\2\0\3\0\0056\0\0\0009\0\1\0'\1\2\0B\0\2\1K\0\1\0k  let g:pencil#wrapModeDefault = 'hard'\n  let g:pencil#autoformat = 0\n  let g:pencil#textwidth = 74\n  \bcmd\bvim\0", "config", "vim-pencil")
time([[Config for vim-pencil]], false)
-- Config for: vim-easy-align
time([[Config for vim-easy-align]], true)
try_loadstring("\27LJ\2\2§\1\0\0\5\0\t\0\0176\0\0\0009\0\1\0009\0\2\0'\1\3\0'\2\4\0'\3\5\0005\4\6\0B\0\5\0016\0\0\0009\0\1\0009\0\2\0'\1\a\0'\2\4\0'\3\5\0005\4\b\0B\0\5\1K\0\1\0\1\0\2\vsilent\1\fnoremap\1\6x\1\0\2\vsilent\1\fnoremap\1\22<Plug>(EasyAlign)\aga\6n\20nvim_set_keymap\bapi\bvim\0", "config", "vim-easy-align")
time([[Config for vim-easy-align]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
try_loadstring("\27LJ\2\2;\0\0\2\0\3\0\a6\0\0\0'\1\1\0B\0\2\0029\0\2\0004\1\0\0B\0\2\1K\0\1\0\nsetup\14which-key\frequire\0", "config", "which-key.nvim")
time([[Config for which-key.nvim]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file VBox lua require("packer.load")({'venn.nvim'}, { cmd = "VBox", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file GrammarousCheck lua require("packer.load")({'vim-grammarous'}, { cmd = "GrammarousCheck", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType markdown ++once lua require("packer.load")({'vim-markdown-toc', 'glow.nvim', 'markdown-preview.nvim', 'vim-wordy'}, { ft = "markdown" }, _G.packer_plugins)]]
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
