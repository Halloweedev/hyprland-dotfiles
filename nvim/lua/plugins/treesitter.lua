return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  event = { "BufReadPost", "BufNewFile" },
  opts = {
    ensure_installed = {
      "lua",
      "python",
      "json",
      "rust",
      "html",
      "css",
      "bash",
      "javascript",
    },
    highlight = { enable = true },
    indent = { enable = true },
    auto_install = false,
  },
}
