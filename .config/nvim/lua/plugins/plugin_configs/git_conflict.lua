require('git-conflict').setup({
	default_mappings = true,
	default_commands = true,
	disable_diagnostics = false,
	list_opener = "copen",
	highlights = {
		incoming = "DiffAdd",
		current = "DiffText",
	},
})

vim.keymap.set('n', '<leader>gcq', ':GitConflictListQf<CR>', { desc = "Liste conflits Git dans quickfix" })
