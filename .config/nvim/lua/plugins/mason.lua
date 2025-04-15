return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "prettierd",
        "biome",
        "stylua",
        "shellcheck",
        "shfmt",
        "flake8",
      },
    },
  },
}
