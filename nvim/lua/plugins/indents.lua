return {
	{
		"lukas-reineke/indent-blankline.nvim",
		event = { "BufReadPre", "BufNewFile" },
		main = "ibl",
		config = function()
			-- Highlight IndentBlanklineScope
			vim.cmd([[highlight IndentBlanklineScope guifg=#B6BEF9 gui=nocombine]])

			-- Load and configure indent-blankline.nvim
			local hooks = require("ibl.hooks")
			hooks.register(hooks.type.SCOPE_HIGHLIGHT, hooks.builtin.scope_highlight_from_extmark)
			hooks.register(hooks.type.WHITESPACE, hooks.builtin.hide_first_space_indent_level)

			require("ibl").setup({
				indent = {
					char = "│",
					smart_indent_cap = true,
					repeat_linebreak = false,
				},
				whitespace = {
					remove_blankline_trail = false,
				},
				scope = {
					enabled = true,
					show_start = false,
					show_end = false,
					injected_languages = false,
					highlight = "IndentBlanklineScope",
					include = {
						node_type = { ["*"] = { "*" } },
					},
				},
			})
		end,
	},
}
