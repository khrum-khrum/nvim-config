return {
  {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    lazy = false, -- main branch does not support lazy-loading
    build = ":TSUpdate",
    config = function()
      local parsers = {
        "go", "gomod", "gowork", "gosum", "lua", "vim", "vimdoc",
        -- markdown + языки, встраиваемые в .md (теги и frontmatter)
        "markdown", "markdown_inline", "html", "yaml",
      }

      -- replaces ensure_installed (no-op if already installed)
      require("nvim-treesitter").install(parsers)

      -- replaces highlight = { enable = true } and indent = { enable = true }
      vim.api.nvim_create_autocmd("FileType", {
        pattern = { "go", "gomod", "gowork", "gosum", "lua", "vim", "help", "markdown" },
        callback = function(args)
          if pcall(vim.treesitter.start, args.buf) then
            vim.bo[args.buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
          end
        end,
      })
    end,
  },
}
