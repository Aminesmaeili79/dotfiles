vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
	pattern = { "*.cshtml" },
	command = "set filetype=html.cshtml.razor",
})
vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
	pattern = { "*.razor" },
	command = "set filetype=html.cshtml.razor",
})

return {
	"OmniSharp/omnisharp-vim",
	"hrsh7th/vim-vsnip",
	"OrangeT/vim-csharp",
	"neovim/nvim-lspconfig",
	"hrsh7th/cmp-nvim-lsp",
	"hrsh7th/cmp-buffer",
	"hrsh7th/cmp-path",
	"hrsh7th/cmp-cmdline",
	"hrsh7th/nvim-cmp",
}
