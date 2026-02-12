return {
  "nvim-telescope/telescope.nvim",
  cmd = "Telescope",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
  },
  keys = {
    { "<C-p>", function() require("telescope.builtin").git_files() end, desc = "Git files" },
    { "<C-b>", function() require("telescope.builtin").buffers() end, desc = "Buffers" },
    { "<C-s>", function() require("telescope.builtin").live_grep() end, desc = "Live grep" },
  },
  config = function()
    require("telescope").load_extension("fzf")
  end,
}