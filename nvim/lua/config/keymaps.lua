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

vim.keymap.set("i", "‘", "<Plug>(copilot-next)", { silent = true })
vim.keymap.set("i", "“", "<Plug>(copilot-previous)", { silent = true })
vim.keymap.set("i", "«", "<Plug>(copilot-suggest)", { silent = true })

vim.keymap.set("n", "<leader>gCo", ":CopilotChatOpen<CR>", { silent = true, desc = "Open Copilot Chat window" })
vim.keymap.set("n", "<leader>gCc", ":CopilotChatClose<CR>", { silent = true, desc = "Close Copilot Chat window" })
vim.keymap.set("n", "<leader>gCt", ":CopilotChatToggle<CR>", { silent = true, desc = "Toggle Copilot Chat window" })
vim.keymap.set("n", "<leader>gCr", ":CopilotChatReset<CR>", { silent = true, desc = "Reset Copilot Chat window" })
vim.keymap.set("n", "<leader>gCs", ":CopilotChatSave ", { silent = false, desc = "Save Copilot Chat history to file" })
vim.keymap.set(
  "n",
  "<leader>gCl",
  ":CopilotChatLoad ",
  { silent = false, desc = "Load Copilot Chat history from file" }
)
vim.keymap.set(
  "n",
  "<leader>gCd",
  ":CopilotChatDebugInfo<CR>",
  { silent = true, desc = "Show Copilot Chat debug information" }
)

vim.keymap.set(
  "n",
  "<leader>gCe",
  ":CopilotChatExplain<CR>",
  { silent = true, desc = "Explain how it works with Copilot Chat" }
)
vim.keymap.set(
  "n",
  "<leader>gCu",
  ":CopilotChatTests<CR>",
  { silent = true, desc = "Generate unit tests with Copilot Chat" }
)
vim.keymap.set("n", "<leader>gCf", ":CopilotChatFix<CR>", { silent = true, desc = "Fix the code with Copilot Chat" })
vim.keymap.set(
  "n",
  "<leader>gCx",
  ":CopilotChatOptimize<CR>",
  { silent = true, desc = "Optimize the code with Copilot Chat" }
)
vim.keymap.set(
  "n",
  "<leader>gCdoc",
  ":CopilotChatDocs<CR>",
  { silent = true, desc = "Write documentation with Copilot Chat" }
)
vim.keymap.set(
  "n",
  "<leader>gCi",
  ":CopilotChatFixDiagnostic<CR>",
  { silent = true, desc = "Fix diagnostic issue with Copilot Chat" }
)
vim.keymap.set(
  "n",
  "<leader>gCm",
  ":CopilotChatCommit<CR>",
  { silent = true, desc = "Write commit message with Copilot Chat" }
)
vim.keymap.set(
  "n",
  "<leader>gCs",
  ":CopilotChatCommitStaged<CR>",
  { silent = true, desc = "Write commit message for staged changes with Copilot Chat" }
)
