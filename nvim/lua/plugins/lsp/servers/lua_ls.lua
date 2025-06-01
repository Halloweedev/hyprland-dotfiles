local opts = {
  settings = {
    Lua = {
      runtime = {
        version = "LuaJIT", -- Neovim uses LuaJIT
      },
      diagnostics = {
        globals = { "vim" }, -- recognize the `vim` global
      },
      workspace = {
        library = vim.api.nvim_get_runtime_file("", true),
        checkThirdParty = false,  -- disable third party prompts
      },
      telemetry = {
        enable = false,
      },
    },
  },
}

return {
  on_attach = function(client, bufnr)
    -- your on_attach code here (optional)
  end,
  opts = opts,
}

