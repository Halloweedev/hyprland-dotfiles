-- Depends on fzf. Always install it prior. sudo pacman -S fzf ripgrep (ripgrep for Rg)
return {
  "junegunn/fzf.vim",
  dependencies = { "junegunn/fzf" },
  lazy = false, -- or use `cmd = { "Files", "Rg", "Buffers" }` to lazy load on use
  init = function()
    vim.keymap.set("n", "<leader>f", ":Files<CR>", { desc = "FZF Files" })
    vim.keymap.set("n", "<leader>b", ":Buffers<CR>", { desc = "FZF Buffers" })
    vim.keymap.set("n", "<leader>r", ":Rg<CR>", { desc = "FZF Ripgrep" })
  end,
  -- no opts or config needed
}
