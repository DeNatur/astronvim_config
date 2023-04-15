return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = { "gdscript" },
    highlight = {
      additional_vim_regex_highlighting = true,
      enable = true,
    },
  },
}
