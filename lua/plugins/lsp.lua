return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    opts = {},
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    dependencies = { "williamboman/mason.nvim" },
    opts = {
      ensure_installed = {
        "ts_ls",
        "eslint",
        "cssls",
        "tailwindcss",
        "html",
        "jsonls",
        "lua_ls",
      },
    },
  },
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    lazy = false,
    dependencies = { "williamboman/mason.nvim" },
    opts = {
      ensure_installed = {
        "cspell",
        "prettier",
        "stylua",
      },
    },
  },
  {
    "hrsh7th/cmp-nvim-lsp",
    lazy = true,
  },
  {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      "hrsh7th/cmp-nvim-lsp",
    },
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      local servers = { "ts_ls", "eslint", "cssls", "tailwindcss", "html", "jsonls" }
      for _, server in ipairs(servers) do
        vim.lsp.config(server, {
          capabilities = capabilities,
        })
      end

      vim.lsp.config("lua_ls", {
        capabilities = capabilities,
        settings = {
          Lua = {
            workspace = { checkThirdParty = false },
            telemetry = { enable = false },
          },
        },
      })

      vim.lsp.enable({ "ts_ls", "eslint", "cssls", "tailwindcss", "html", "jsonls", "lua_ls" })

      -- Show diagnostics inline
      vim.diagnostic.config({
        virtual_text = true,
        signs = true,
        underline = true,
        update_in_insert = false,
      })

      -- Keymaps (set when an LSP attaches to a buffer)
      vim.api.nvim_create_autocmd("LspAttach", {
        callback = function(args)
          local buf = args.buf
          local map = function(mode, lhs, rhs, desc)
            vim.keymap.set(mode, lhs, rhs, { buffer = buf, desc = desc })
          end

          map("n", "<leader>d", vim.diagnostic.open_float, "Show diagnostic")
          map("n", "gd", vim.lsp.buf.definition, "Go to definition")
          map("n", "gr", vim.lsp.buf.references, "Go to references")
          map("n", "K", vim.lsp.buf.hover, "Hover documentation")
          map("n", "<leader>ca", vim.lsp.buf.code_action, "Code action")
          map("n", "<leader>rn", vim.lsp.buf.rename, "Rename symbol")
          map("n", "[d", vim.diagnostic.goto_prev, "Previous diagnostic")
          map("n", "]d", vim.diagnostic.goto_next, "Next diagnostic")
        end,
      })
    end,
  },
}