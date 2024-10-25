return {
	"aktersnurra/no-clown-fiesta.nvim",
	priority = 1000,
	lazy = false,
	config = function()
		require("no-clown-fiesta").setup({
			styles = {
				type = { bold = true },
				lsp = { underline = false },
				match_paren = { underline = true },
			},
		})
	end,
}
