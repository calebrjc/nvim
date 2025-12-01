return {
	-- TODO: Add comment.nvim?
	--[[
    { 
        "pocco81/auto-save.nvim", 
        opts = {
            enabled = true,
            condition = function(buf)
                local fn = vim.fn
                local utils = require("auto-save.utils.data")

                if vim.bo.filetype == "oil" then
                    return false
                end

                if
	                fn.getbufvar(buf, "&modifiable") == 1 and
			        utils.not_in(fn.getbufvar(buf, "&filetype"), {}) then
			        return true -- met condition(s), can save
		        end

        		return false
            end,
        }
    },
--]]
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		opts = {},
	},
	{
		"stevearc/oil.nvim",
		opts = {
			columns = {
				"icon",
				"permissions",
				"size",
				"mtime",
			},
		},
		keys = {
			{
				"<leader>\\",
				function()
					require("oil").toggle_float()
				end,
				desc = "Toggle Oil floating window",
			},
		},
	},
	{
		"abecodes/tabout.nvim",
		lazy = false,
		opts = {
			tabkey = "<Tab>",
			backwards_tabkey = "<S-Tab>",
			act_as_tab = true,
			act_as_shift_tab = false,
			default_tab = "<C-t>",
			default_shift_tab = "<C-d>",
			enable_backwards = true,
			completion = true,
			tabouts = {
				{ open = '"', close = '"' },
				{ open = "'", close = "'" },
				{ open = "`", close = "`" },
				{ open = "(", close = ")" },
				{ open = "[", close = "]" },
				{ open = "{", close = "}" },
			},
			ignore_beginning = false,
			exclude = {},
		},
		opt = true,
		event = "InsertCharPre",
		priority = 1000,
	},
	{
		"akinsho/toggleterm.nvim",
		version = "*",
		opts = {
			float_opts = {
				border = "rounded",
				width = function()
					return math.ceil(vim.o.columns * 0.8)
				end,
				height = function()
					return math.ceil(vim.o.lines * 0.8)
				end,
			},
		},
		keys = {
			{ "<C-\\>", "<cmd>ToggleTerm direction=float<CR>", desc = "Toggle floating terminal", mode = "n" },
			{ "<C-\\>", "<cmd>ToggleTerm direction=float<CR>", desc = "Toggle floating terminal", mode = "v" },
			{ "<C-\\>", "<cmd>ToggleTerm direction=float<CR>", desc = "Toggle floating terminal", mode = "i" },
			{ "<C-\\>", "<cmd>ToggleTerm direction=float<CR>", desc = "Toggle floating terminal", mode = "t" },
		},
	},
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		main = "nvim-treesitter.configs",
		opts = {
			ensure_installed = {
				"bash",
				"c",
				"diff",
				"html",
				"lua",
				"luadoc",
				"markdown",
				"markdown_inline",
				"query",
				"vim",
				"vimdoc",
			},
			auto_install = true,
			highlight = {
				enable = true,

				-- Some languages depend on vim"s regex highlighting system (such as Ruby) for indent rules.
				--  If experiencing weird indenting issues, add the language to the list of
				--  additional_vim_regex_highlighting and disabled languages for indent.
				additional_vim_regex_highlighting = { "ruby" },
			},
			indent = { enable = true, disable = { "ruby" } },
		},
	},
}
