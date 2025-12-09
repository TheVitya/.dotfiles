return {
  "yetone/avante.nvim",
  event = "VeryLazy",
  lazy = false,
  version = false, -- Never set this value to "*"! Never!
  build = "make",
  opts = {
    provider = "copilot",
    -- provider = "openai",
    -- providers = {
    --   openai = {
    --     endpoint = "https://api.openai.com/v1",
    --     model = "gpt-4o-mini",
    --   },
    -- },
  },
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    -- Optional
    "stevearc/dressing.nvim",
    "zbirenbaum/copilot.lua", -- Required for copilot provider
    -- Extras
    "nvim-mini/mini.pick",
    "nvim-telescope/telescope.nvim",
    "hrsh7th/nvim-cmp",
    "ibhagwan/fzf-lua",
    "folke/snacks.nvim",
  },

}
