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
  ["astronauta.nvim"] = {
    loaded = true,
    path = "/home/qvieth/.local/share/lunarvim/site/pack/packer/start/astronauta.nvim"
  },
  ["barbar.nvim"] = {
    config = { "\27LJ\2\2~\0\0\2\0\6\0\0156\0\0\0'\1\1\0B\0\2\0016\0\2\0009\0\3\0009\0\4\0009\0\5\0\15\0\0\0X\1\5€6\0\2\0009\0\3\0009\0\4\0009\0\5\0B\0\1\1K\0\1\0\19on_config_done\15bufferline\vplugin\6O\20core.bufferline\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/qvieth/.local/share/lunarvim/site/pack/packer/opt/barbar.nvim"
  },
  ["bracey.vim"] = {
    commands = { "Bracey" },
    loaded = false,
    needs_bufread = false,
    path = "/home/qvieth/.local/share/lunarvim/site/pack/packer/opt/bracey.vim"
  },
  ["compe-tabnine"] = {
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/home/qvieth/.local/share/lunarvim/site/pack/packer/opt/compe-tabnine"
  },
  ["dashboard-nvim"] = {
    config = { "\27LJ\2\2–\1\0\0\3\0\a\0\0206\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\0016\0\3\0009\0\4\0009\0\5\0009\0\6\0\15\0\0\0X\1\b€6\0\3\0009\0\4\0009\0\5\0009\0\6\0006\1\0\0'\2\5\0B\1\2\0A\0\0\1K\0\1\0\19on_config_done\14dashboard\vplugin\6O\nsetup\19core.dashboard\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/qvieth/.local/share/lunarvim/site/pack/packer/opt/dashboard-nvim"
  },
  ["emmet-vim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/qvieth/.local/share/lunarvim/site/pack/packer/opt/emmet-vim"
  },
  ["formatter.nvim"] = {
    config = { "\27LJ\2\2ˆ\1\0\0\3\0\6\0\0186\0\0\0'\1\1\0B\0\2\0016\0\2\0009\0\3\0009\0\4\0009\0\5\0\15\0\0\0X\1\b€6\0\2\0009\0\3\0009\0\4\0009\0\5\0006\1\0\0'\2\4\0B\1\2\0A\0\0\1K\0\1\0\19on_config_done\14formatter\vplugin\6O\19core.formatter\frequire\0" },
    loaded = true,
    path = "/home/qvieth/.local/share/lunarvim/site/pack/packer/start/formatter.nvim"
  },
  ["friendly-snippets"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/qvieth/.local/share/lunarvim/site/pack/packer/opt/friendly-snippets"
  },
  ["galaxyline.nvim"] = {
    config = { "\27LJ\2\2Š\1\0\0\3\0\6\0\0186\0\0\0'\1\1\0B\0\2\0016\0\2\0009\0\3\0009\0\4\0009\0\5\0\15\0\0\0X\1\b€6\0\2\0009\0\3\0009\0\4\0009\0\5\0006\1\0\0'\2\4\0B\1\2\0A\0\0\1K\0\1\0\19on_config_done\15galaxyline\vplugin\6O\20core.galaxyline\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/qvieth/.local/share/lunarvim/site/pack/packer/opt/galaxyline.nvim"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\2”\1\0\0\3\0\a\0\0206\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\0016\0\3\0009\0\4\0009\0\5\0009\0\6\0\15\0\0\0X\1\b€6\0\3\0009\0\4\0009\0\5\0009\0\6\0006\1\0\0'\2\5\0B\1\2\0A\0\0\1K\0\1\0\19on_config_done\rgitsigns\vplugin\6O\nsetup\18core.gitsigns\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/qvieth/.local/share/lunarvim/site/pack/packer/opt/gitsigns.nvim"
  },
  ["indent-blankline.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/qvieth/.local/share/lunarvim/site/pack/packer/opt/indent-blankline.nvim"
  },
  ["markdown-preview.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/qvieth/.local/share/lunarvim/site/pack/packer/opt/markdown-preview.nvim"
  },
  ["material.nvim"] = {
    config = { "\27LJ\2\2Û\1\0\0\2\0\v\0\0226\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0+\1\2\0=\1\4\0006\0\0\0009\0\1\0'\1\6\0=\1\5\0006\0\0\0009\0\1\0+\1\2\0=\1\a\0006\0\b\0'\1\t\0B\0\2\0029\0\n\0B\0\1\1K\0\1\0\bset\rmaterial\frequire\21material_borders\f#FFDEAD\28material_variable_color\30material_lighter_contrast\vdarker\19material_style\6g\bvim\0" },
    loaded = true,
    path = "/home/qvieth/.local/share/lunarvim/site/pack/packer/start/material.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\2—\1\0\0\3\0\a\0\0186\0\0\0'\1\1\0B\0\2\0016\0\2\0009\0\3\0009\0\4\0009\0\5\0\15\0\0\0X\1\b€6\0\2\0009\0\3\0009\0\4\0009\0\5\0006\1\0\0'\2\6\0B\1\2\0A\0\0\1K\0\1\0\19nvim-autopairs\19on_config_done\14autopairs\vplugin\6O\19core.autopairs\frequire\0" },
    loaded = true,
    path = "/home/qvieth/.local/share/lunarvim/site/pack/packer/start/nvim-autopairs"
  },
  ["nvim-comment"] = {
    config = { "\27LJ\2\2 \1\0\0\4\0\b\0\0226\0\0\0006\1\1\0'\2\2\0B\0\3\3\14\0\0\0X\2\1€K\0\1\0009\2\3\1B\2\1\0016\2\4\0009\2\5\0029\2\6\0029\2\a\2\15\0\2\0X\3\6€6\2\4\0009\2\5\0029\2\6\0029\2\a\2\18\3\1\0B\2\2\1K\0\1\0\19on_config_done\fcomment\vplugin\6O\nsetup\17nvim_comment\frequire\npcall\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/qvieth/.local/share/lunarvim/site/pack/packer/opt/nvim-comment"
  },
  ["nvim-compe"] = {
    after = { "compe-tabnine" },
    loaded = true,
    only_config = true
  },
  ["nvim-lint"] = {
    config = { "\27LJ\2\2Ž\1\0\0\3\0\a\0\0206\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\0016\0\3\0009\0\4\0009\0\5\0009\0\6\0\15\0\0\0X\1\b€6\0\3\0009\0\4\0009\0\5\0009\0\6\0006\1\0\0'\2\5\0B\1\2\0A\0\0\1K\0\1\0\19on_config_done\tlint\vplugin\6O\nsetup\16core.linter\frequire\0" },
    loaded = true,
    path = "/home/qvieth/.local/share/lunarvim/site/pack/packer/start/nvim-lint"
  },
  ["nvim-lsp-ts-utils"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/qvieth/.local/share/lunarvim/site/pack/packer/opt/nvim-lsp-ts-utils"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/qvieth/.local/share/lunarvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-lspinstall"] = {
    config = { "\27LJ\2\2€\1\0\0\3\0\6\0\0186\0\0\0'\1\1\0B\0\2\0029\1\2\0B\1\1\0016\1\3\0009\1\4\0019\1\1\0019\1\5\1\15\0\1\0X\2\6€6\1\3\0009\1\4\0019\1\1\0019\1\5\1\18\2\0\0B\1\2\1K\0\1\0\19on_config_done\vplugin\6O\nsetup\15lspinstall\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/qvieth/.local/share/lunarvim/site/pack/packer/opt/nvim-lspinstall"
  },
  ["nvim-toggleterm.lua"] = {
    config = { "\27LJ\2\2Ÿ\1\0\0\3\0\b\0\0206\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\0016\0\3\0009\0\4\0009\0\5\0009\0\6\0\15\0\0\0X\1\b€6\0\3\0009\0\4\0009\0\5\0009\0\6\0006\1\0\0'\2\a\0B\1\2\0A\0\0\1K\0\1\0\15toggleterm\19on_config_done\rterminal\vplugin\6O\nsetup\18core.terminal\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/qvieth/.local/share/lunarvim/site/pack/packer/opt/nvim-toggleterm.lua"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\2¥\1\0\0\3\0\b\0\0206\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\0016\0\3\0009\0\4\0009\0\5\0009\0\6\0\15\0\0\0X\1\b€6\0\3\0009\0\4\0009\0\5\0009\0\6\0006\1\0\0'\2\a\0B\1\2\0A\0\0\1K\0\1\0\21nvim-tree.config\19on_config_done\rnvimtree\vplugin\6O\nsetup\18core.nvimtree\frequire\0" },
    loaded = true,
    path = "/home/qvieth/.local/share/lunarvim/site/pack/packer/start/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\2°\1\0\0\3\0\b\0\0206\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\0016\0\3\0009\0\4\0009\0\5\0009\0\6\0\15\0\0\0X\1\b€6\0\3\0009\0\4\0009\0\5\0009\0\6\0006\1\0\0'\2\a\0B\1\2\0A\0\0\1K\0\1\0\28nvim-treesitter.configs\19on_config_done\15treesitter\vplugin\6O\nsetup\20core.treesitter\frequire\0" },
    loaded = true,
    path = "/home/qvieth/.local/share/lunarvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-ts-autotag"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/qvieth/.local/share/lunarvim/site/pack/packer/opt/nvim-ts-autotag"
  },
  ["nvim-ts-context-commentstring"] = {
    loaded = true,
    path = "/home/qvieth/.local/share/lunarvim/site/pack/packer/start/nvim-ts-context-commentstring"
  },
  ["nvim-ts-rainbow"] = {
    loaded = true,
    path = "/home/qvieth/.local/share/lunarvim/site/pack/packer/start/nvim-ts-rainbow"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/qvieth/.local/share/lunarvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/qvieth/.local/share/lunarvim/site/pack/packer/start/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/qvieth/.local/share/lunarvim/site/pack/packer/start/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/qvieth/.local/share/lunarvim/site/pack/packer/start/popup.nvim"
  },
  rnvimr = {
    loaded = false,
    needs_bufread = false,
    path = "/home/qvieth/.local/share/lunarvim/site/pack/packer/opt/rnvimr"
  },
  sniprun = {
    commands = { "SnipRun" },
    loaded = false,
    needs_bufread = false,
    path = "/home/qvieth/.local/share/lunarvim/site/pack/packer/opt/sniprun"
  },
  ["symbols-outline.nvim"] = {
    commands = { "SymbolsOutline" },
    loaded = false,
    needs_bufread = false,
    path = "/home/qvieth/.local/share/lunarvim/site/pack/packer/opt/symbols-outline.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\2–\1\0\0\3\0\a\0\0206\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\0016\0\3\0009\0\4\0009\0\5\0009\0\6\0\15\0\0\0X\1\b€6\0\3\0009\0\4\0009\0\5\0009\0\6\0006\1\0\0'\2\5\0B\1\2\0A\0\0\1K\0\1\0\19on_config_done\14telescope\vplugin\6O\nsetup\19core.telescope\frequire\0" },
    loaded = true,
    path = "/home/qvieth/.local/share/lunarvim/site/pack/packer/start/telescope.nvim"
  },
  ultisnips = {
    config = { "\27LJ\2\2£\1\0\0\2\0\b\0\r6\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0'\1\5\0=\1\4\0006\0\0\0009\0\1\0'\1\a\0=\1\6\0K\0\1\0\n<C-k>!UltiSnipsJumpBackwardTrigger\n<C-j> UltiSnipsJumpForwardTrigger\n<C-s>\27UltiSnipsExpandTrigger\6g\bvim\0" },
    loaded = true,
    path = "/home/qvieth/.local/share/lunarvim/site/pack/packer/start/ultisnips"
  },
  ["venn.nvim"] = {
    commands = { "VBox" },
    loaded = false,
    needs_bufread = false,
    path = "/home/qvieth/.local/share/lunarvim/site/pack/packer/opt/venn.nvim"
  },
  ["vim-colors-off"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/qvieth/.local/share/lunarvim/site/pack/packer/opt/vim-colors-off"
  },
  ["vim-commentary"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/qvieth/.local/share/lunarvim/site/pack/packer/opt/vim-commentary"
  },
  ["vim-elixir"] = {
    loaded = false,
    needs_bufread = true,
    path = "/home/qvieth/.local/share/lunarvim/site/pack/packer/opt/vim-elixir"
  },
  ["vim-markdown-toc"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/qvieth/.local/share/lunarvim/site/pack/packer/opt/vim-markdown-toc"
  },
  ["vim-prettier"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/qvieth/.local/share/lunarvim/site/pack/packer/opt/vim-prettier"
  },
  ["vim-rooter"] = {
    config = { "\27LJ\2\2€\1\0\0\2\0\a\0\0166\0\0\0009\0\1\0)\1\1\0=\1\2\0006\0\3\0009\0\4\0009\0\5\0009\0\6\0\15\0\0\0X\1\5€6\0\3\0009\0\4\0009\0\5\0009\0\6\0B\0\1\1K\0\1\0\19on_config_done\vrooter\vplugin\6O\24rooter_silent_chdir\6g\bvim\0" },
    loaded = true,
    path = "/home/qvieth/.local/share/lunarvim/site/pack/packer/start/vim-rooter"
  },
  ["vim-snippets"] = {
    loaded = true,
    path = "/home/qvieth/.local/share/lunarvim/site/pack/packer/start/vim-snippets"
  },
  ["vim-surround"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/qvieth/.local/share/lunarvim/site/pack/packer/opt/vim-surround"
  },
  ["vim-vsnip"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/qvieth/.local/share/lunarvim/site/pack/packer/opt/vim-vsnip"
  },
  ["vim-yin-yang"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/qvieth/.local/share/lunarvim/site/pack/packer/opt/vim-yin-yang"
  },
  vimtex = {
    loaded = false,
    needs_bufread = true,
    path = "/home/qvieth/.local/share/lunarvim/site/pack/packer/opt/vimtex"
  },
  vimwiki = {
    config = { "\27LJ\2\2Ë\2\0\0\3\0\a\0\0156\0\0\0009\0\1\0)\1\2\0=\1\2\0006\0\0\0009\0\1\0004\1\4\0005\2\4\0>\2\1\0015\2\5\0>\2\2\0015\2\6\0>\2\3\1=\1\3\0K\0\1\0\1\0\1\tpath\14~/mytest/\1\0\1\tpath\15~/mynote2/\1\0\b\21custom_wiki2html\21vimwiki_markdown\bext\b.md\14path_html\24~/mynote_site_html/\tpath\r~/mynote\21template_default\fdefault\vsyntax\rmarkdown\18template_path\25~/vimwiki/templates/\17template_ext\t.tpl\17vimwiki_list\29vimwiki_toc_header_level\6g\bvim\0" },
    loaded = true,
    path = "/home/qvieth/.local/share/lunarvim/site/pack/packer/start/vimwiki"
  },
  ["vscode-es7-javascript-react-snippets"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/qvieth/.local/share/lunarvim/site/pack/packer/opt/vscode-es7-javascript-react-snippets"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\2\2 \1\0\0\3\0\b\0\0206\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\0016\0\3\0009\0\4\0009\0\5\0009\0\6\0\15\0\0\0X\1\b€6\0\3\0009\0\4\0009\0\5\0009\0\6\0006\1\0\0'\2\a\0B\1\2\0A\0\0\1K\0\1\0\14which-key\19on_config_done\14which_key\vplugin\6O\nsetup\19core.which-key\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/qvieth/.local/share/lunarvim/site/pack/packer/opt/which-key.nvim"
  },
  yui = {
    loaded = false,
    needs_bufread = false,
    path = "/home/qvieth/.local/share/lunarvim/site/pack/packer/opt/yui"
  }
}

time([[Defining packer_plugins]], false)
-- Setup for: indent-blankline.nvim
time([[Setup for indent-blankline.nvim]], true)
try_loadstring("\27LJ\2\2’\3\0\0\2\0\f\0\0256\0\0\0009\0\1\0+\1\2\0=\1\2\0006\0\0\0009\0\1\0005\1\4\0=\1\3\0006\0\0\0009\0\1\0+\1\1\0=\1\5\0006\0\0\0009\0\1\0005\1\a\0=\1\6\0006\0\0\0009\0\1\0005\1\t\0=\1\b\0006\0\0\0009\0\1\0005\1\v\0=\1\n\0K\0\1\0\1\3\0\0\t*.md\v.*.txt%indent_blankline_bufname_exclude\1\3\0\0\rterminal\vpacker%indent_blankline_buftype_exclude\1\5\0\0\thelp\14dashboard\vpacker\fvimwiki&indent_blankline_filetype_exclude4indent_blankline_show_trailing_blankline_indent\1\5\0\0\bâ”‚\bâ”‚\bâ”†\aÂ¦\31indent_blankline_char_list\29indent_blankline_enabled\6g\bvim\0", "setup", "indent-blankline.nvim")
time([[Setup for indent-blankline.nvim]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\2–\1\0\0\3\0\a\0\0206\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\0016\0\3\0009\0\4\0009\0\5\0009\0\6\0\15\0\0\0X\1\b€6\0\3\0009\0\4\0009\0\5\0009\0\6\0006\1\0\0'\2\5\0B\1\2\0A\0\0\1K\0\1\0\19on_config_done\14telescope\vplugin\6O\nsetup\19core.telescope\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: nvim-compe
time([[Config for nvim-compe]], true)
try_loadstring("\27LJ\2\2Ž\1\0\0\3\0\a\0\0206\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\0016\0\3\0009\0\4\0009\0\5\0009\0\6\0\15\0\0\0X\1\b€6\0\3\0009\0\4\0009\0\5\0009\0\6\0006\1\0\0'\2\5\0B\1\2\0A\0\0\1K\0\1\0\19on_config_done\ncompe\vplugin\6O\nsetup\15core.compe\frequire\0", "config", "nvim-compe")
time([[Config for nvim-compe]], false)
-- Config for: vimwiki
time([[Config for vimwiki]], true)
try_loadstring("\27LJ\2\2Ë\2\0\0\3\0\a\0\0156\0\0\0009\0\1\0)\1\2\0=\1\2\0006\0\0\0009\0\1\0004\1\4\0005\2\4\0>\2\1\0015\2\5\0>\2\2\0015\2\6\0>\2\3\1=\1\3\0K\0\1\0\1\0\1\tpath\14~/mytest/\1\0\1\tpath\15~/mynote2/\1\0\b\21custom_wiki2html\21vimwiki_markdown\bext\b.md\14path_html\24~/mynote_site_html/\tpath\r~/mynote\21template_default\fdefault\vsyntax\rmarkdown\18template_path\25~/vimwiki/templates/\17template_ext\t.tpl\17vimwiki_list\29vimwiki_toc_header_level\6g\bvim\0", "config", "vimwiki")
time([[Config for vimwiki]], false)
-- Config for: ultisnips
time([[Config for ultisnips]], true)
try_loadstring("\27LJ\2\2£\1\0\0\2\0\b\0\r6\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0'\1\5\0=\1\4\0006\0\0\0009\0\1\0'\1\a\0=\1\6\0K\0\1\0\n<C-k>!UltiSnipsJumpBackwardTrigger\n<C-j> UltiSnipsJumpForwardTrigger\n<C-s>\27UltiSnipsExpandTrigger\6g\bvim\0", "config", "ultisnips")
time([[Config for ultisnips]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\2¥\1\0\0\3\0\b\0\0206\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\0016\0\3\0009\0\4\0009\0\5\0009\0\6\0\15\0\0\0X\1\b€6\0\3\0009\0\4\0009\0\5\0009\0\6\0006\1\0\0'\2\a\0B\1\2\0A\0\0\1K\0\1\0\21nvim-tree.config\19on_config_done\rnvimtree\vplugin\6O\nsetup\18core.nvimtree\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: nvim-lint
time([[Config for nvim-lint]], true)
try_loadstring("\27LJ\2\2Ž\1\0\0\3\0\a\0\0206\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\0016\0\3\0009\0\4\0009\0\5\0009\0\6\0\15\0\0\0X\1\b€6\0\3\0009\0\4\0009\0\5\0009\0\6\0006\1\0\0'\2\5\0B\1\2\0A\0\0\1K\0\1\0\19on_config_done\tlint\vplugin\6O\nsetup\16core.linter\frequire\0", "config", "nvim-lint")
time([[Config for nvim-lint]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\2\2—\1\0\0\3\0\a\0\0186\0\0\0'\1\1\0B\0\2\0016\0\2\0009\0\3\0009\0\4\0009\0\5\0\15\0\0\0X\1\b€6\0\2\0009\0\3\0009\0\4\0009\0\5\0006\1\0\0'\2\6\0B\1\2\0A\0\0\1K\0\1\0\19nvim-autopairs\19on_config_done\14autopairs\vplugin\6O\19core.autopairs\frequire\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
-- Config for: formatter.nvim
time([[Config for formatter.nvim]], true)
try_loadstring("\27LJ\2\2ˆ\1\0\0\3\0\6\0\0186\0\0\0'\1\1\0B\0\2\0016\0\2\0009\0\3\0009\0\4\0009\0\5\0\15\0\0\0X\1\b€6\0\2\0009\0\3\0009\0\4\0009\0\5\0006\1\0\0'\2\4\0B\1\2\0A\0\0\1K\0\1\0\19on_config_done\14formatter\vplugin\6O\19core.formatter\frequire\0", "config", "formatter.nvim")
time([[Config for formatter.nvim]], false)
-- Config for: material.nvim
time([[Config for material.nvim]], true)
try_loadstring("\27LJ\2\2Û\1\0\0\2\0\v\0\0226\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0+\1\2\0=\1\4\0006\0\0\0009\0\1\0'\1\6\0=\1\5\0006\0\0\0009\0\1\0+\1\2\0=\1\a\0006\0\b\0'\1\t\0B\0\2\0029\0\n\0B\0\1\1K\0\1\0\bset\rmaterial\frequire\21material_borders\f#FFDEAD\28material_variable_color\30material_lighter_contrast\vdarker\19material_style\6g\bvim\0", "config", "material.nvim")
time([[Config for material.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\2°\1\0\0\3\0\b\0\0206\0\0\0'\1\1\0B\0\2\0029\0\2\0B\0\1\0016\0\3\0009\0\4\0009\0\5\0009\0\6\0\15\0\0\0X\1\b€6\0\3\0009\0\4\0009\0\5\0009\0\6\0006\1\0\0'\2\a\0B\1\2\0A\0\0\1K\0\1\0\28nvim-treesitter.configs\19on_config_done\15treesitter\vplugin\6O\nsetup\20core.treesitter\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: vim-rooter
time([[Config for vim-rooter]], true)
try_loadstring("\27LJ\2\2€\1\0\0\2\0\a\0\0166\0\0\0009\0\1\0)\1\1\0=\1\2\0006\0\3\0009\0\4\0009\0\5\0009\0\6\0\15\0\0\0X\1\5€6\0\3\0009\0\4\0009\0\5\0009\0\6\0B\0\1\1K\0\1\0\19on_config_done\vrooter\vplugin\6O\24rooter_silent_chdir\6g\bvim\0", "config", "vim-rooter")
time([[Config for vim-rooter]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd compe-tabnine ]]
time([[Sequenced loading]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
if vim.fn.exists(":VBox") ~= 2 then
vim.cmd [[command! -nargs=* -range -bang -complete=file VBox lua require("packer.load")({'venn.nvim'}, { cmd = "VBox", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
end
if vim.fn.exists(":SnipRun") ~= 2 then
vim.cmd [[command! -nargs=* -range -bang -complete=file SnipRun lua require("packer.load")({'sniprun'}, { cmd = "SnipRun", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
end
if vim.fn.exists(":Bracey") ~= 2 then
vim.cmd [[command! -nargs=* -range -bang -complete=file Bracey lua require("packer.load")({'bracey.vim'}, { cmd = "Bracey", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
end
if vim.fn.exists(":SymbolsOutline") ~= 2 then
vim.cmd [[command! -nargs=* -range -bang -complete=file SymbolsOutline lua require("packer.load")({'symbols-outline.nvim'}, { cmd = "SymbolsOutline", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
end
time([[Defining lazy-load commands]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType markdown ++once lua require("packer.load")({'vim-markdown-toc', 'markdown-preview.nvim'}, { ft = "markdown" }, _G.packer_plugins)]]
vim.cmd [[au FileType eelixir ++once lua require("packer.load")({'vim-elixir'}, { ft = "eelixir" }, _G.packer_plugins)]]
vim.cmd [[au FileType euphoria3 ++once lua require("packer.load")({'vim-elixir'}, { ft = "euphoria3" }, _G.packer_plugins)]]
vim.cmd [[au FileType typescript.tsx ++once lua require("packer.load")({'vim-prettier', 'vscode-es7-javascript-react-snippets', 'nvim-lsp-ts-utils', 'emmet-vim', 'nvim-ts-autotag'}, { ft = "typescript.tsx" }, _G.packer_plugins)]]
vim.cmd [[au FileType tex ++once lua require("packer.load")({'vimtex'}, { ft = "tex" }, _G.packer_plugins)]]
vim.cmd [[au FileType javascriptreact ++once lua require("packer.load")({'vim-prettier', 'vscode-es7-javascript-react-snippets', 'nvim-lsp-ts-utils', 'emmet-vim', 'nvim-ts-autotag'}, { ft = "javascriptreact" }, _G.packer_plugins)]]
vim.cmd [[au FileType typescript ++once lua require("packer.load")({'vim-prettier', 'vscode-es7-javascript-react-snippets', 'nvim-lsp-ts-utils', 'emmet-vim', 'nvim-ts-autotag'}, { ft = "typescript" }, _G.packer_plugins)]]
vim.cmd [[au FileType typescriptreact ++once lua require("packer.load")({'vim-prettier', 'vscode-es7-javascript-react-snippets', 'nvim-lsp-ts-utils', 'emmet-vim', 'nvim-ts-autotag'}, { ft = "typescriptreact" }, _G.packer_plugins)]]
vim.cmd [[au FileType javascript ++once lua require("packer.load")({'vim-prettier', 'vscode-es7-javascript-react-snippets', 'nvim-lsp-ts-utils', 'emmet-vim', 'nvim-ts-autotag'}, { ft = "javascript" }, _G.packer_plugins)]]
vim.cmd [[au FileType html ++once lua require("packer.load")({'vim-prettier', 'vscode-es7-javascript-react-snippets', 'emmet-vim', 'nvim-ts-autotag'}, { ft = "html" }, _G.packer_plugins)]]
vim.cmd [[au FileType javascript.jsx ++once lua require("packer.load")({'vim-prettier', 'vscode-es7-javascript-react-snippets', 'nvim-lsp-ts-utils', 'emmet-vim', 'nvim-ts-autotag'}, { ft = "javascript.jsx" }, _G.packer_plugins)]]
vim.cmd [[au FileType elixir ++once lua require("packer.load")({'vim-elixir'}, { ft = "elixir" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au BufRead * ++once lua require("packer.load")({'vim-commentary', 'vim-surround', 'gitsigns.nvim', 'nvim-comment', 'indent-blankline.nvim'}, { event = "BufRead *" }, _G.packer_plugins)]]
vim.cmd [[au VimEnter * ++once lua require("packer.load")({'nvim-lspinstall'}, { event = "VimEnter *" }, _G.packer_plugins)]]
vim.cmd [[au BufWinEnter * ++once lua require("packer.load")({'barbar.nvim', 'galaxyline.nvim', 'nvim-toggleterm.lua', 'dashboard-nvim', 'which-key.nvim', 'rnvimr'}, { event = "BufWinEnter *" }, _G.packer_plugins)]]
vim.cmd [[au InsertEnter * ++once lua require("packer.load")({'vscode-es7-javascript-react-snippets', 'vim-vsnip', 'friendly-snippets', 'emmet-vim'}, { event = "InsertEnter *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")
vim.cmd [[augroup filetypedetect]]
time([[Sourcing ftdetect script at: /home/qvieth/.local/share/lunarvim/site/pack/packer/opt/vim-elixir/ftdetect/elixir.vim]], true)
vim.cmd [[source /home/qvieth/.local/share/lunarvim/site/pack/packer/opt/vim-elixir/ftdetect/elixir.vim]]
time([[Sourcing ftdetect script at: /home/qvieth/.local/share/lunarvim/site/pack/packer/opt/vim-elixir/ftdetect/elixir.vim]], false)
time([[Sourcing ftdetect script at: /home/qvieth/.local/share/lunarvim/site/pack/packer/opt/vimtex/ftdetect/tex.vim]], true)
vim.cmd [[source /home/qvieth/.local/share/lunarvim/site/pack/packer/opt/vimtex/ftdetect/tex.vim]]
time([[Sourcing ftdetect script at: /home/qvieth/.local/share/lunarvim/site/pack/packer/opt/vimtex/ftdetect/tex.vim]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
