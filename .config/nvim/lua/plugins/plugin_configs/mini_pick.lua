require("mini.pick").setup({
	mappings = {
		move_down = "<C-n>",
		move_up = "<C-p>",
		toggle_preview = "<Tab>",
		choose = "<CR>",
		choose_marked = "<C-G>",
		stop = "<Esc>",
	},
})
-- Keymaps pour ouvrir les pickers mini.pick intégrés
vim.keymap.set('n', '<leader><leader>', ":Pick files<CR>", { desc = "Ouvrir picker fichiers" })
vim.keymap.set('n', '<leader>b', ":Pick buffers<CR>", { desc = "Ouvrir picker buffers" })
vim.keymap.set('n', '<leader>g', ":Pick grep_live<CR>", { desc = "Lancer recherche grep" })
vim.keymap.set('n', '<leader>h', ":Pick help<CR>", { desc = "Ouvrir picker help" })
