-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

local uv = vim.loop

if not uv.fs_stat(lazypath) then
    local lazyrepo = "https://github.com/folke/lazy.nvim.git"
    local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
    if vim.v.shell_error ~= 0 then
        vim.api.nvim_echo({
            { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
            { out, "WarningMsg" },
            { "\nPress any key to exit..." },
        }, true, {})
        vim.fn.getchar()
        os.exit(1)
    end
end
vim.opt.rtp:prepend(lazypath)

-- Load your vim options here before lazy.nvim setup
-- Make sure to setup `mapleader` and `maplocalleader` before loading lazy.nvim
-- So if you have mapleader in options.lua, it's already set.
-- This is also a good place to setup other settings (vim.opt)

require("options")

-- Setup lazy.nvim
require("lazy").setup({
    spec = {
        -- import your plugins
        { import = "plugins" },
        -- import plugins for lsp in plugins/lsp/
        { import = "plugins.lsp" },
    },
    -- automatically check for plugin updates
    checker = { enabled = true },
})
