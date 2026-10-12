return {
  {
    "MeanderingProgrammer/render-markdown.nvim",
    dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-tree/nvim-web-devicons" },
    ft = { "markdown" },
    opts = {
      -- требует внешних утилит (utftex/latex2text) и парсера latex
      latex = { enabled = false },
    },
  },
}
