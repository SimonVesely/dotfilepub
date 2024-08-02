vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set cursorline")
vim.cmd("set clipboard=unnamedplus")

vim.g.mapleader = " "
vim.g.background = "dark"

vim.opt.swapfile = false

vim.opt.fillchars = { eob = " " }

-- Navigate vim panes better
-- vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
-- vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
-- vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
-- vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')

vim.cmd('hi Normal ctermbg=none guibg=none')

--vim.cmd('set guicursor=')
vim.cmd[[
    augroup RestoreCursorShapeOnExit
        autocmd!
        autocmd VimLeave * set guicursor=a:ver1
    augroup END
]]

-- Enable italic comments
vim.cmd [[highlight Comment cterm=italic gui=italic]]


vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
vim.wo.number = true
