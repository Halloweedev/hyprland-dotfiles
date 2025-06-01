-- lua/options.lua

-- Leader keys: must be set before plugin mappings/load
vim.g.mapleader = " "           -- Set space as the global leader key
vim.g.maplocalleader = "\\"     -- Set backslash as the local leader key

-- Basic UI and editing options
vim.o.number = true             -- Show absolute line numbers
vim.o.relativenumber = false    -- Disable relative line numbers
vim.o.expandtab = true          -- Use spaces instead of tabs when pressing Tab
vim.o.shiftwidth = 4            -- Number of spaces for each indentation level
vim.o.tabstop = 4               -- Number of spaces that a tab counts for
vim.o.smartindent = true        -- Enable smart indentation for new lines

-- Clipboard
vim.opt.clipboard = "unnamedplus" -- Use system clipboard for all operations (copy/paste)

-- Colors and UI
vim.opt.termguicolors = true   -- Enable 24-bit RGB color in the terminal (required by some plugins/themes)

-- Options for nvim-ufo
vim.o.fillchars = [[eob: ,fold: ,foldopen:▾,foldsep: ,foldclose:▸]]
vim.o.foldcolumn = "auto:9" -- 10 breaks the plugin, 9 works with the issue mentioned before
vim.o.foldnestmax = 1
vim.o.foldlevel = 99999999 -- Bigger than this also breaks the plugin
vim.o.foldlevelstart = 99999999
vim.o.foldenable = true

vim.o.scrolloff = 5
vim.o.sidescrolloff = 5

-- Redrawing and cursor enhancements nvim-ufo help
vim.o.lazyredraw = false
vim.o.cursorline = true
vim.o.cursorcolumn = true
vim.o.cursorlineopt = "number,line"
