return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		vim.opt.termguicolors = true
		require("bufferline").setup({
			options = {
				-- General options
				numbers = "none", -- Can be "none", "ordinal", "buffer_id", "both"
				close_command = "bdelete! %d", -- Command to run when closing a buffer
				right_mouse_command = "bdelete! %d", -- Command to run on right mouse click
				left_mouse_command = "buffer %d", -- Command to run on left mouse click
				middle_mouse_command = nil, -- Command to run on middle mouse click
				indicator = {
					style = "icon", -- Can be 'icon' or 'underline'
					icon = "▎",
				},
				modified_icon = "●",
				close_icon = "",
				left_trunc_marker = "",
				right_trunc_marker = "",
				-- Display options
				max_name_length = 18,
				max_prefix_length = 15,
				tab_size = 18,

				-- Styling options
				separator_style = "thin", -- Can be "slant", "thick", "thin"
				enforce_regular_tabs = false,
				always_show_bufferline = false,
			},
			highlights = {
				background = {
					guibg = "none",
				},
				fill = {
					guibg = "none",
				},
				buffer_selected = {
					guibg = "none",
				},
				separator = {
					guibg = "none",
					guifg = "none",
				},
				separator_selected = {
					guibg = "none",
					guifg = "none",
				},
				separator_visible = {
					guibg = "none",
					guifg = "none",
				},
				close_button = {
					guibg = "none",
				},
				close_button_selected = {
					guibg = "none",
				},
				close_button_visible = {
					guibg = "none",
				},
			},
		})
		-- Key bindings for buffer navigation
		vim.api.nvim_set_keymap("n", "<Tab>", ":BufferLineCycleNext<CR>", { noremap = true, silent = true })
		vim.api.nvim_set_keymap("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", { noremap = true, silent = true })
	end,
}
