return {
	"akinsho/git-conflict.nvim",
	version = "*",
	config = function()
		require('git-conflict').setup({
			default_mappings = true,
			list_opener = 'copen', -- Ouvre automatiquement la quickfix
		})
		-- Keymaps
		vim.keymap.set('n', '<leader>gl', '<cmd>GitConflictListQf<cr>',
			{ desc = 'Liste TOUS les conflits' })
		-- Navigation fichiers (quickfix)
		vim.keymap.set('n', ']q', '<cmd>cnext<cr>zz',
			{ desc = 'Fichier conflit suivant' })
		vim.keymap.set('n', '[q', '<cmd>cprev<cr>zz',
			{ desc = 'Fichier conflit précédent' })
		-- Navigation conflits (dans le fichier)
		vim.keymap.set('n', ']x', '<cmd>GitConflictNextConflict<cr>',
			{ desc = 'Conflit suivant' })
		vim.keymap.set('n', '[x', '<cmd>GitConflictPrevConflict<cr>',
			{ desc = 'Conflit précédent' })
		-- Résolution
		vim.keymap.set('n', '<leader>co', '<cmd>GitConflictChooseOurs<cr>',
			{ desc = 'Garder notre version' })
		vim.keymap.set('n', '<leader>ct', '<cmd>GitConflictChooseTheirs<cr>',
			{ desc = 'Garder leur version' })
		vim.keymap.set('n', '<leader>cb', '<cmd>GitConflictChooseBoth<cr>',
			{ desc = 'Garder les deux' })
		vim.keymap.set('n', '<leader>cn', '<cmd>GitConflictChooseNone<cr>',
			{ desc = 'Garder aucun' })
	end
}
