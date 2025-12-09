return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "jose-elias-alvarez/typescript.nvim",
    },
    opts = {
      servers = {
        tsserver = {
          keys = {
            { "<leader>co", "<cmd>TypescriptOrganizeImports<cr>", desc = "Organize Imports" },
            { "<leader>cR", "<cmd>TypescriptRenameFile<cr>", desc = "Rename File" },
          },
        },
        vtsls = {
          on_attach = function(client)
            if client.name == "vtsls" then
              client.server_capabilities.documentFormattingProvider = false
              client.server_capabilities.documentRangeFormattingProvider = false
            end
          end,
        },
      },
      setup = {
        tsserver = function(_, opts)
          require("typescript").setup({
            server = opts,
          })
          return true
        end,
      },
      inlay_hints = {
        enabled = false,
      },
    },
  },
}
