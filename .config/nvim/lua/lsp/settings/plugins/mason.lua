require("mason").setup({
	ui = {
		icons = {
			package_installed = "✓",
			package_pending = "➜",
			package_uninstalled = "✗",
		},
	},
})

-- Setup l'installateur automatique
require("mason-tool-installer").setup({
	ensure_installed = {
		"lua-language-server", -- Lua
		"css-lsp",      -- css
		"html-lsp",     -- html
		"typescript-language-server", -- TypeScript
		"gopls",        -- Go
		"clangd",       -- C/C++
		-- ajoute d'autres si besoin
	},
	run_on_start = true,
})

require("mason-lspconfig").setup()
