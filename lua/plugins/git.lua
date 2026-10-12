return {
  {
    "lewis6991/gitsigns.nvim",
    opts = {
      current_line_blame = false, -- включается вручную клавишей <leader>tb
    },
    config = function(_, opts)
      require("gitsigns").setup(opts)

      -- навигация между изменёнными кусками кода (hunks)
      vim.keymap.set("n", "]h", function()
        require("gitsigns").nav_hunk("next")
      end, { desc = "Следующее изменение" })
      vim.keymap.set("n", "[h", function()
        require("gitsigns").nav_hunk("prev")
      end, { desc = "Предыдущее изменение" })

      -- стейджинг прямо в файле
      vim.keymap.set("n", "<leader>hs", function() require("gitsigns").stage_hunk() end, { desc = "Stage hunk" })
      vim.keymap.set("n", "<leader>hu", function() require("gitsigns").undo_stage_hunk() end, { desc = "Undo stage" })
      vim.keymap.set("n", "<leader>hr", function() require("gitsigns").reset_hunk() end, { desc = "Reset hunk" })
      vim.keymap.set("n", "<leader>hp", function() require("gitsigns").preview_hunk() end, { desc = "Preview hunk" })
    end,
  },
  {
    "NeogitOrg/neogit",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim",
    },
    cmd = "Neogit",
    keys = {
      { "<leader>gs", "<cmd>Neogit<CR>", desc = "Git status" },
    },
    opts = {},
  },
}
