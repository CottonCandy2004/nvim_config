return {{
		"nvim-lualine/lualine.nvim",
		config = function ()
				require("lualine").setup()
		end,
    options = {
        theme = 'auto'
      },
		dependencies = {'nvim-tree/nvim-web-devicons'}
}}
