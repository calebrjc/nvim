vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- Navigation between splits
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus left" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus down" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus up" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus right" })

-- Disable arrow keys in normal mode
vim.keymap.set("n", "<left>", '<cmd>echo "Use \'h\' to move left"<CR>')
vim.keymap.set("n", "<down>", '<cmd>echo "Use \'j\' to move down"<CR>')
vim.keymap.set("n", "<up>", '<cmd>echo "Use \'k\' to move up"<CR>')
vim.keymap.set("n", "<right>", '<cmd>echo "Use \'l\' to move right"<CR>')

vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlights text when yanking",
  group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
