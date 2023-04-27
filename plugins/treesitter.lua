return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = { "gdscript" },
    highlight = {
      additional_vim_regex_highlighting = false,
      enable = true,
    },
    indent = {
      disable = {
        "gdscript",
      },
    },
  },
}
