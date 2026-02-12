return {
  "stevearc/conform.nvim",
  event = { "BufWritePre" },
  cmd = { "ConformInfo" },
  opts = {
    formatters_by_ft = {
      javascript = { "prettier" },
      typescript = { "prettier" },
      javascriptreact = { "prettier" },
      typescriptreact = { "prettier" },
      css = { "prettier" },
      html = { "prettier" },
      json = { "prettier" },
      yaml = { "prettier" },
      markdown = { "prettier" },
      lua = { "stylua" },
    },
    -- Format on save is OFF. Use :Format to format manually.
    format_on_save = false,
  },
  init = function()
    vim.api.nvim_create_user_command("Format", function()
      require("conform").format({ async = true, lsp_fallback = true })
    end, { desc = "Format the current buffer" })
  end,
}