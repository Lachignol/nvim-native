return {
	cmd = { "clangd", "--background-index", "--header-insertion=never" },
	filetypes = { "c", "cpp", "objc", "objcpp" },
	root_markers = { "compile_commands.json", "compile_flags.txt", ".git" },
	settings = {},
}
