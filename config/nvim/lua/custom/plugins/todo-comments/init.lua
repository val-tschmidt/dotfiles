-- Highlight todo, notes, etc in comments
return {
	"folke/todo-comments.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	opts = { signs = true },
}
