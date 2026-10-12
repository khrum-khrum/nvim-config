-- Перенос длинных строк по словам (глобально wrap выключен)
vim.opt_local.wrap = true
vim.opt_local.linebreak = true

-- j/k двигаются по экранным строкам, а не по логическим
vim.keymap.set({ "n", "x" }, "j", "gj", { buffer = true })
vim.keymap.set({ "n", "x" }, "k", "gk", { buffer = true })

vim.keymap.set("n", "<leader>mp", "<cmd>RenderMarkdown toggle<CR>", { buffer = true, desc = "Toggle markdown render" })
