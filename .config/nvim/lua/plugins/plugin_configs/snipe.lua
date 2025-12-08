-- Charger et configurer snipe.nvim
require('snipe').setup({})


vim.keymap.set('n', 'gb', function()
	require('snipe').open_buffer_menu()
end, { noremap = true, silent = true, desc = 'Ouvrir menu buffers snipe' })
