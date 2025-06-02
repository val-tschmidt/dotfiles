return {
	"FooSoft/vim-argwrap",
	config = function()
		vim.g.argwrap_tail_comma = true
	end,
	keys = {
		{ "<Leader>a", ":ArgWrap<CR>", noremap = true, silent = true },
	},
}
