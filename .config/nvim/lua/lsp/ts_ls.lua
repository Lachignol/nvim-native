local on_attach = require("lsp.on_attach").on_attach
return {
	cmd = { "typescript-language-server", "--stdio" },
	filetypes = { "typescript", "typescriptreact", "javascript", "javascriptreact", "typescript.tsx" },
	root_markers = { "package.json", "package-lock.json", "tsconfig.json", ".git" },
	settings = {},
	on_attach = on_attach,
}
