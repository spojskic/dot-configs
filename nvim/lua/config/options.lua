-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local lsp_conflicts, _ = pcall(vim.api.nvim_get_autocmds, { group = "LspAttach_conflicts" })
if not lsp_conflicts then
  vim.api.nvim_create_augroup("LspAttach_conflicts", {})
end

vim.api.nvim_create_autocmd("LspAttach", {
  group = "LspAttach_conflicts",
  desc = "Prevent eslint and tsserver competing for formatting",
  callback = function(args)
    if not (args.data and args.data.client_id) then
      return
    end

    local active_clients = vim.lsp.get_active_clients()
    local client = vim.lsp.get_client_by_id(args.data.client_id)

    -- Check if the attached client is eslint or tsserver
    if client.name == "eslint" then
      for _, client_ in pairs(active_clients) do
        -- Disable tsserver formatting if eslint is active to avoid conflicts
        if client_.name == "tsserver" then
          print("Disabling tsserver formatting because eslint is active.")
          client_.server_capabilities.documentFormattingProvider = false
        end
      end
    elseif client.name == "tsserver" then
      for _, client_ in pairs(active_clients) do
        -- Disable tsserver formatting if eslint is already attached
        if client_.name == "eslint" then
          print("ESLint is active. Disabling tsserver formatting.")
          client.server_capabilities.documentFormattingProvider = false
          return -- Early return to avoid multiple prints
        end
      end
    end
  end,
})

vim.opt.winbar = "%=%m %f"
