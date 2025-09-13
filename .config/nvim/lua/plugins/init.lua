vim.pack.add({
	-- { src = "https://github.com/vague2k/vague.nvim" },
	{ src = "https://github.com/stevearc/oil.nvim" },
	{ src = "https://github.com/echasnovski/mini.pick" },
	{ src = "https://github.com/chomosuke/typst-preview.nvim" },
	{ src = 'https://github.com/neovim/nvim-lspconfig' },
	{ src = "https://github.com/mason-org/mason.nvim" },
	{ src = "https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim" },
	{ src = "https://github.com/L3MON4D3/LuaSnip" },
	{ src = "https://github.com/folke/zen-mode.nvim" },
	{ src = "https://github.com/akinsho/toggleterm.nvim" },
	{ src = "https://github.com/rafamadriz/friendly-snippets" },
	{ src = "https://github.com/m4xshen/hardtime.nvim" },
	{ src = "https://github.com/preservim/nerdtree" },
	{ src = "https://github.com/akinsho/git-conflict.nvim" },
	{ src = "https://github.com/Xuyuanp/nerdtree-git-plugin" },
	{ src = "https://github.com/barrett-ruth/live-server.nvim" },
	{ src = "https://github.com/m4xshen/autoclose.nvim" },
	{ src = "https://github.com/scottmckendry/cyberdream.nvim" },
})

-- Charger config plugins une fois installés
require("plugins.plugin_configs.mason")
require("plugins.plugin_configs.mini_pick")
require("plugins.plugin_configs.oil")
require("plugins.plugin_configs.luasnip")
require("plugins.plugin_configs.zen")
require("plugins.plugin_configs.terminal")
require("plugins.plugin_configs.hardtime")
require("plugins.plugin_configs.nerdtree")
require("plugins.plugin_configs.git_conflict")
require("plugins.plugin_configs.nerdtree-git-plugin")
require("plugins.plugin_configs.live-server")
require("plugins.plugin_configs.autoclose")
