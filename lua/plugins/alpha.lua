return {
  "goolord/alpha-nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  event = "VimEnter",
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    dashboard.section.buttons.val = {
      dashboard.button("e", "  New file", "<cmd>ene<cr>"),
      dashboard.button("Ctrl+p", "  Find file", "<C-p>"),
      dashboard.button("Ctrl+s", "  Live grep", "<C-s>"),
      dashboard.button("Ctrl+b", "  Buffers", "<C-b>"),
      dashboard.button("r", "  Recent files", "<cmd>Telescope oldfiles<cr>"),
      dashboard.button("c", "  Config", "<cmd>e ~/.config/nvim/init.lua<cr>"),
      dashboard.button("q", "  Quit", "<cmd>qa<cr>"),
    }

    dashboard.section.footer.val = ""

    alpha.setup(dashboard.config)
  end,
}