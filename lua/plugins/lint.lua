return {
  "mfussenegger/nvim-lint",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local lint = require("lint")

    lint.linters_by_ft = {
      javascript = { "cspell" },
      javascriptreact = { "cspell" },
      typescript = { "cspell" },
      typescriptreact = { "cspell" },
      html = { "cspell" },
      css = { "cspell" },
      json = { "cspell" },
      yaml = { "cspell" },
      markdown = { "cspell" },
      lua = { "cspell" },
    }

    vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
      callback = function()
        lint.try_lint()
      end,
    })
  end,
}