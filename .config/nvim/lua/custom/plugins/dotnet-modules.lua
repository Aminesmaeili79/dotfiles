return {
	"hrsh7th/vim-vsnip",
	"OrangeT/vim-csharp",
	vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
		pattern = { "*.cshtml" },
		command = "set filetype=html.cshtml.razor",
	}),

	vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
		pattern = { "*.razor" },
		command = "set filetype=html.cshtml.razor",
	}),
}
