return {
	{
		"cacharle/c_formatter_42.vim",
		config = function() end,
	},
	{
		"42Paris/42header",
		config = function() end,
	},
	{
		"goolord/alpha-nvim",
		opts = function(_, opts)
			-- customize the header
			opts.section.header.val = {
				"    _____________    ________  ___",
				"   / ____/_  __/ |  / /  _/  |/  /",
				"  / /_    / /  | | / // // /|_/ / ",
				" / __/   / /   | |/ // // /  / /  ",
				"/_/     /_/    |___/___/_/  /_/   ",
				"                                   ",
			}
			return opts
		end,
	},
}
