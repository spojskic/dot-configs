-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set(
  "n",
  "<leader>sx",
  require("telescope.builtin").resume,
  { noremap = true, silent = true, desc = "Resume" }
)

vim.keymap.set("n", "<leader>bT", ":ToggleTerm direction=horizontal <CR>", { desc = "Open horizontal terminal split" })

vim.api.nvim_set_keymap("i", "<S-CR>", "copilot#Accept()", { noremap = true, silent = true, expr = true })
