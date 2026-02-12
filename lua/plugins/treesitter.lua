local ensure_installed = {
  "bash",
  "css",
  "html",
  "javascript",
  "json",
  "lua",
  "markdown",
  "markdown_inline",
  "regex",
  "tsx",
  "typescript",
  "yaml",
}

return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  lazy = false,
  config = function()
    -- Auto-install missing parsers on startup
    local installed = require("nvim-treesitter.config").get_installed()
    local to_install = vim.tbl_filter(function(lang)
      return not vim.list_contains(installed, lang)
    end, ensure_installed)

    if #to_install > 0 then
      vim.cmd("TSInstall " .. table.concat(to_install, " "))
    end

    -- Enable treesitter highlighting for all filetypes with a parser
    vim.api.nvim_create_autocmd("FileType", {
      callback = function()
        pcall(vim.treesitter.start)
      end,
    })
  end,
}