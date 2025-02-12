return {
	{
		"rebelot/kanagawa.nvim",
		lazy = false, -- Ensure it's loaded immediately
		priority = 1000, -- Ensure it loads before other plugins
	},
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "kanagawa",
		},
	},
}
