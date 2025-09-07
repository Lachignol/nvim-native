local on_attach = require("lsp.on_attach").on_attach

return {
	cmd = { "vscode-html-language-server", "--stdio" },
	filetypes = { "html" },
	root_markers = { "index.html", "package.json", ".git" },
	on_attach = on_attach,
	settings = {},
}
