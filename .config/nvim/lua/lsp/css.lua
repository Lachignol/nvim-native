return {
	cmd = { "css-languageserver", "--stdio" },
	filetypes = { "css", "scss", "less" },
	root_markers = { "package.json", ".git" },
	on_attach = require("lsp.on_attach").on_attach,
	settings = {},
}
