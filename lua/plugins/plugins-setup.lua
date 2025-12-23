local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])
return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  }
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }
  
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional
    }
  }
  
  use("christoomey/vim-tmux-navigator")
  
  use "nvim-treesitter/nvim-treesitter" -- syntax highlighting
  use "p00f/nvim-ts-rainbow"
  
  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig"
  }

    use "hrsh7th/nvim-cmp"
  use "hrsh7th/cmp-nvim-lsp"
  use "L3MON4D3/LuaSnip" -- snippet engin
  use "saadparwaiz1/cmp_luasnip"
  use "rafamadriz/friendly-snippets"
  use "hrsh7th/cmp-path" -- file path

  use "numToStr/Comment.nvim" -- gcc
  use "windwp/nvim-autopairs" -- bracket
  use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}
  use "lewis6991/gitsigns.nvim" -- git hint

  use {
    'nvim-telescope/telescope.nvim', tag = 'v0.2.0',  -- file explore
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  
  use {
    "startup-nvim/startup.nvim",
    requires = {"nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim"},
    config = function()
      require"startup".setup(require("plugins.startup_conf"))
    end
  }

  use "stevearc/dressing.nvim"
  use({
    "ziontee113/icon-picker.nvim",
    config = function()
      require("icon-picker").setup({
        disable_legacy_commands = true
      })
    end,
  })
  use {"akinsho/toggleterm.nvim", tag = '*', config = function()
    require("toggleterm").setup()
  end}

  use {
    'renerocksai/telekasten.nvim',
    requires = {'nvim-telescope/telescope.nvim'}
  }
  
  use {'ojroques/nvim-bufdel'}
  
  use {
    "FeiyouG/commander.nvim",
    requires = { "nvim-telescope/telescope.nvim" }
  }

  use {
    "folke/which-key.nvim",
    config = function()
      require("which-key").setup({
        -- leave empty to use default settings
      })

      -- Set up the buffer local keymaps
      vim.keymap.set("n", "<leader>?", function()
        require("which-key").show({ global = false })
      end, { desc = "Buffer Local Keymaps (which-key)" })
    end
  }

  use({
      "kylechui/nvim-surround",
      tag = "*", -- Use for stability; omit to use `main` branch for the latest features
      config = function()
          require("nvim-surround").setup({
              -- Configuration here, or leave empty to use defaults
          })
      end
  })
  
   use {'Vigemus/iron.nvim'}

  -- use {'iamcco/markdown-preview.nvim'}
use({
    "iamcco/markdown-preview.nvim",
    run = 'cd app && yarn install',
})

  use {
    'coder/claudecode.nvim',
    requires = { 'folke/snacks.nvim' },
    config = function()
      require('claudecode').setup()
    end
  }

  if packer_bootstrap then
    require('packer').sync()
  end
end)
