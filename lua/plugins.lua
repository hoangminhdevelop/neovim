local status, packer = pcall(require, "packer")

if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'  -- Packer manage itseft
  use 'nvim-lua/plenary.nvim'   -- Common utils
  use 'neovim/nvim-lspconfig'   -- LSP config
  use 'williamboman/mason.nvim' -- Manage LSP
  use 'L3MON4D3/LuaSnip'

  -- Theme
  use 'rebelot/kanagawa.nvim'

  -- Work space
  use 'nvim-lualine/lualine.nvim'     -- Status line
  use 'nvim-tree/nvim-web-devicons'   -- Icon
  use 'nvim-telescope/telescope.nvim' -- Search modal
  use 'nvim-telescope/telescope-file-browser.nvim'
  use {
    'nvim-treesitter/nvim-treesitter', -- Highlight code
    run = function()
      local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
      ts_update()
    end,
  }

  -- Code support
  use 'windwp/nvim-autopairs'  -- Auto close {,(,[
  use 'windwp/nvim-ts-autotag' -- Auto to close tag and rename tag
  use("hrsh7th/nvim-cmp")      -- completion plugin
  use 'hrsh7th/cmp-nvim-lsp'   -- autocompletion by lsp
  use("hrsh7th/cmp-buffer")    -- source for text in buffer
  use("hrsh7th/cmp-path")      -- source for file system paths
end)
