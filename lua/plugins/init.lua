return {
  {
    "stevearc/conform.nvim",
    event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },
 {
 "neovim/nvim-lspconfig",
 config = function()
     require("nvchad.configs.lspconfig").defaults()
     require "configs.lspconfig"
   end,
 },
 {
  "williamboman/mason.nvim",
  opts = {
    ensure_installed = {
      "lua-language-server", "stylua",
      "html-lsp", "css-lsp" , "prettier", "php-cs-fixed",
    },
  },
 },
 {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "vim", "lua", "vimdoc",
      "html", "css"
    },
  },
 },
  {
    "tpope/vim-fugitive",
    lazy = true,
    cmd = "Git",
  },
  {
    "VonHeikemen/lsp-zero.nvim"
  }
}
