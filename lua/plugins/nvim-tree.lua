return {
  "nvim-tree/nvim-tree.lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  keys = {
    { "<leader>e", "<cmd>NvimTreeToggle<cr>", desc = "Toggle file tree" },
  },
  opts = {
    view = { width = 35, side = "right" },
    renderer = {
      group_empty = true,
    },
    filters = {
      dotfiles = false,
    },
    update_focused_file = {
      enable = true,
    },
  },
}