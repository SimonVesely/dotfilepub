--[[   Gruvbox theme
return {
  "ellisonleao/gruvbox.nvim",
  lazy = false,
  name = "gruvbox",
  priority = 1000,
  config = function()
    vim.cmd.colorscheme "gruvbox"
    vim.cmd('hi Normal ctermbg=none guibg=none')
  end
}]]
return {
	"catppuccin/nvim",
	name = "catppuccin",
	lazy = false,
	priority = 1000,
	config = function()
		vim.cmd.colorscheme("catppuccin-mocha")
		vim.cmd("hi Normal ctermbg=none guibg=none")
	end,
}
