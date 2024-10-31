local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out,                            "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end

vim.opt.rtp:prepend(lazypath)

local plugins = {
  "folke/which-key.nvim",
  'nvim-lua/plenary.nvim',
  -- Clang
  "p00f/clangd_extensions.nvim",
  -- Clojure
  "Olical/conjure",
  "tpope/vim-dispatch",
  "radenling/vim-dispatch-neovim",
  "clojure-vim/vim-jack-in",
  "tpope/vim-sexp-mappings-for-regular-people",
  --colorizer
  'norcalli/nvim-colorizer.lua',
  --rust
  'simrat39/rust-tools.nvim',
  -- flutter dart
  'thosakwe/vim-flutter',
  'natebosch/dartlang-snippets',
  'dart-lang/dart-vim-plugin',
  -- flutter dart end
  'natebosch/vim-lsc',
  'windwp/nvim-autopairs',
  'ThePrimeagen/git-worktree.nvim',
  'terrortylor/nvim-comment',
  'm4xshen/autoclose.nvim',
  'akinsho/toggleterm.nvim',
  'nvim-tree/nvim-tree.lua',
  'nvim-tree/nvim-web-devicons',
  'nvim-lualine/lualine.nvim',
  'nvim-lua/popup.nvim',
  'nvim-treesitter/nvim-treesitter',
  'saadparwaiz1/cmp_luasnip',
  {
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
  },
  {
    "L3MON4D3/LuaSnip",
    -- follow latest release.
    tag = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
    -- install jsregexp (optional!:).
    run = "make install_jsregexp"
  },
  'rafamadriz/friendly-snippets',
  {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons'
  },
  {
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    'neovim/nvim-lspconfig',
  },
  {
    'nvim-telescope/telescope.nvim',
    'nvim-telescope/telescope-fzy-native.nvim',
    tag = '0.1.4',
    dependencies = { { 'nvim-lua/plenary.nvim' } }
  },
  -- Completion framework
  'hrsh7th/nvim-cmp',

  -- LSP completion source
  'hrsh7th/cmp-nvim-lsp',

  -- Useful completion sources
  'hrsh7th/cmp-nvim-lua',
  'hrsh7th/cmp-nvim-lsp-signature-help',
  'hrsh7th/cmp-vsnip',
  'hrsh7th/cmp-path',
  'hrsh7th/cmp-buffer',
  'hrsh7th/vim-vsnip',

  -- git
  'lewis6991/gitsigns.nvim',

  -- Colorscheme
  { "catppuccin/nvim",                 as = "catppuccin" },
  'ellisonleao/gruvbox.nvim',
  'Mofiqul/dracula.nvim',
  { 'nyoom-engineering/oxocarbon.nvim' },
  { "cdmill/neomodern.nvim" },
  'navarasu/onedark.nvim',
  'NLKNguyen/papercolor-theme',
  'maxmx03/solarized.nvim',
  'stevearc/conform.nvim',
  -- greeting screen
  {
    'goolord/alpha-nvim',
    config = function()
      require 'alpha'.setup(require 'alpha.themes.dashboard'.config)
    end
  },

  -- surround plugin
  {
    "kylechui/nvim-surround",
    tag = "*", -- Use for stability; omit to use `main` branch for the latest features
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
      })
    end
  },
}

require('lazy').setup(plugins, opts)
