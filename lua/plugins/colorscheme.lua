return {
  {
    "rose-pine/neovim",
    name = "rose-pine",
    priority = 1000,
    config = function()
      require("rose-pine").setup({})
    end,
  },
  {
    "datsfilipe/vesper.nvim",
    priority = 1000,
    config = function()
      require("vesper").setup({
        transparent = false,
        italics = {
          comments = true,
          keywords = true,
          functions = true,
          strings = false,
          variables = false,
        },
      })
      -- Active colorscheme
      vim.cmd.colorscheme("vesper")

      -- Snacks indent colors matching vesper
      vim.api.nvim_set_hl(0, "SnacksIndent", { fg = "#1C1C1C" })
      vim.api.nvim_set_hl(0, "SnacksIndentScope", { fg = "#FFC799" })
    end,
  },
}