return {
  "williamboman/mason-lspconfig.nvim",
  dependencies = { "mason.nvim" },
  opts = {
    --if installed here; it created two instances of lua_ls and this one overrides the version in servers/
    --you can choose which one to use, note that if configured here, you have to add all its settings here and delete it elsewhere
    --i chose to config it the easy way
    --ensure_installed = { "lua_ls" },
  },
}
