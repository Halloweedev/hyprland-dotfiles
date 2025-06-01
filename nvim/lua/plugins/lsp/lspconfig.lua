return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
  },
  config = function()
    local lspconfig = require("lspconfig")

    -- Helper function to scan servers directory for .lua files
    local function get_servers()
      local servers = {}
      local scan = vim.loop.fs_scandir or vim.fs.scandir -- fallback for newer nvim versions

      -- Path to your servers directory, adjust if needed
      local servers_path = vim.fn.stdpath("config") .. "/lua/plugins/lsp/servers"

      local fd = scan(servers_path)
      if not fd then
        print("No servers directory found at " .. servers_path)
        return servers
      end

      while true do
        local name, type = vim.loop.fs_scandir_next(fd)
        if not name then break end
        if type == "file" and name:match("%.lua$") then
          local server_name = name:gsub("%.lua$", "")
          table.insert(servers, server_name)
        end
      end

      return servers
    end

    local servers = get_servers()

    for _, server in ipairs(servers) do
      local ok, opts = pcall(require, "plugins.lsp.servers." .. server)
      if not ok then
        print("Failed to load LSP config for " .. server)
        opts = {}
      end

      -- If your server config exports { on_attach = ..., opts = ... } structure,
      -- then unpack opts here:
      if type(opts) == "table" and opts.opts then
        opts = vim.tbl_deep_extend("force", opts.opts, {
          on_attach = opts.on_attach,
        })
      end

      lspconfig[server].setup(opts)
    end
  end,
}

