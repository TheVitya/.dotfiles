return {
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        "prettierd",
        "biome",
        "stylua",
        "shellcheck",
        "shfmt",
        "flake8",
        "nix",

        -- PHP
        "intelephense",
        "php-cs-fixer",
        "phpstan",
        "phpmd",
      },
    },
  },
}
