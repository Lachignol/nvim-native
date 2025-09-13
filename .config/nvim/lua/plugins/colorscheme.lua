require("cyberdream").setup({
	-- options, exemple :
	variant = "default", -- ou "light", "auto"
	transparent = true,
	saturation = 1,
	italic_comments = false,
	borderless_pickers = false,
	terminal_colors = true,
	cache = false,
	extensions = {
		mini = true,
	},
})
vim.cmd("colorscheme cyberdream")
-- colors
-- require "vague".setup({ transparent = true })
-- vim.cmd("colorscheme vague")
-- vim.cmd(":hi statusline guibg=NONE")
