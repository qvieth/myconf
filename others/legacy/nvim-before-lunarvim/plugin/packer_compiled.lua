-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors = pcall(function()

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
  black = {
    loaded = true,
    path = "/home/qvieth/.local/share/nvim/site/pack/packer/start/black"
  },
  ["bracey.vim"] = {
    loaded = true,
    path = "/home/qvieth/.local/share/nvim/site/pack/packer/start/bracey.vim"
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
  ["gruvbox.nvim"] = {
    loaded = true,
    path = "/home/qvieth/.local/share/nvim/site/pack/packer/start/gruvbox.nvim"
  },
  ["indent-blankline.nvim"] = {
    loaded = true,
    path = "/home/qvieth/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/home/qvieth/.local/share/nvim/site/pack/packer/start/lualine.nvim"
  },
  ["lush.nvim"] = {
    loaded = true,
    path = "/home/qvieth/.local/share/nvim/site/pack/packer/start/lush.nvim"
  },
  ["markdown-preview.nvim"] = {
    loaded = true,
    path = "/home/qvieth/.local/share/nvim/site/pack/packer/start/markdown-preview.nvim"
  },
  ["material.nvim"] = {
    loaded = true,
    path = "/home/qvieth/.local/share/nvim/site/pack/packer/start/material.nvim"
  },
  ["nvim-autopairs"] = {
    loaded = true,
    path = "/home/qvieth/.local/share/nvim/site/pack/packer/start/nvim-autopairs"
  },
  ["nvim-bufferline.lua"] = {
    loaded = true,
    path = "/home/qvieth/.local/share/nvim/site/pack/packer/start/nvim-bufferline.lua"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/qvieth/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["onedark.nvim"] = {
    loaded = true,
    path = "/home/qvieth/.local/share/nvim/site/pack/packer/start/onedark.nvim"
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
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/qvieth/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  ["typescript-vim"] = {
    loaded = true,
    path = "/home/qvieth/.local/share/nvim/site/pack/packer/start/typescript-vim"
  },
  ["vim-LanguageTool"] = {
    loaded = true,
    path = "/home/qvieth/.local/share/nvim/site/pack/packer/start/vim-LanguageTool"
  },
  ["vim-commentary"] = {
    loaded = true,
    path = "/home/qvieth/.local/share/nvim/site/pack/packer/start/vim-commentary"
  },
  ["vim-floaterm"] = {
    loaded = true,
    path = "/home/qvieth/.local/share/nvim/site/pack/packer/start/vim-floaterm"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/qvieth/.local/share/nvim/site/pack/packer/start/vim-fugitive"
  },
  ["vim-graphql"] = {
    loaded = true,
    path = "/home/qvieth/.local/share/nvim/site/pack/packer/start/vim-graphql"
  },
  ["vim-javascript"] = {
    loaded = true,
    path = "/home/qvieth/.local/share/nvim/site/pack/packer/start/vim-javascript"
  },
  ["vim-jsx-pretty"] = {
    loaded = true,
    path = "/home/qvieth/.local/share/nvim/site/pack/packer/start/vim-jsx-pretty"
  },
  ["vim-markdown-toc"] = {
    loaded = true,
    path = "/home/qvieth/.local/share/nvim/site/pack/packer/start/vim-markdown-toc"
  },
  ["vim-prettier"] = {
    loaded = true,
    path = "/home/qvieth/.local/share/nvim/site/pack/packer/start/vim-prettier"
  },
  ["vim-snippets"] = {
    loaded = true,
    path = "/home/qvieth/.local/share/nvim/site/pack/packer/start/vim-snippets"
  },
  ["vim-startify"] = {
    loaded = true,
    path = "/home/qvieth/.local/share/nvim/site/pack/packer/start/vim-startify"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/home/qvieth/.local/share/nvim/site/pack/packer/start/vim-surround"
  },
  ["vim-toml"] = {
    loaded = true,
    path = "/home/qvieth/.local/share/nvim/site/pack/packer/start/vim-toml"
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
    loaded = true,
    path = "/home/qvieth/.local/share/nvim/site/pack/packer/start/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: ".v:exception | echom "Please check your config for correctness" | echohl None')
end
