return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  event = "InsertEnter",
  config = function()
    require("copilot").setup({
      suggestion = {
        enabled = true,
        auto_trigger = true,
        keymap = {
          accept = "<M-l>",
          accept_word = "<M-k>",
          next = "<M-]>",
          prev = "<M-[>",
          dismiss = "<M-h>",
        },
      },
      panel = { enabled = false },
    })

    -- Toggle copilot on/off
    vim.keymap.set("n", "<leader>ct", function()
      require("copilot.suggestion").toggle_auto_trigger()
      local state = vim.b.copilot_suggestion_auto_trigger
      print("Copilot: " .. (state and "enabled" or "disabled"))
    end, { desc = "Toggle Copilot" })
  end,
}