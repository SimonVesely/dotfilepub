local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

vim.cmd([[
  augroup filetypedetect
    au! BufRead,BufNewFile *.slint set filetype=slint
  augroup END
]])

-- Specific configuration for .slint files
vim.api.nvim_create_autocmd("FileType", {
    pattern = "slint",
    callback = function()
        vim.bo.expandtab = true
        vim.bo.tabstop = 4
        vim.bo.shiftwidth = 4
        vim.bo.softtabstop = 4
        vim.bo.autoindent = true
        vim.bo.smartindent = true
    end
})
-- Set the background to transparent
vim.api.nvim_set_hl(0, 'Normal', {ctermbg = 'NONE', bg = 'NONE'})
vim.api.nvim_set_hl(0, 'NonText', {ctermbg = 'NONE', bg = 'NONE'})
vim.api.nvim_set_hl(0, 'LineNr', {ctermbg = 'NONE', bg = 'NONE'})
vim.api.nvim_set_hl(0, 'Folded', {ctermbg = 'NONE', bg = 'NONE'})
vim.api.nvim_set_hl(0, 'EndOfBuffer', {ctermbg = 'NONE', bg = 'NONE'})

vim.api.nvim_create_augroup("nobg", { clear = true })
vim.api.nvim_create_autocmd({ "ColorScheme" }, {
  desc = "Make all backgrounds transparent",
  group = "nobg",
  pattern = "*",
  callback = function()
    vim.api.nvim_set_hl(0, "Normal", { bg = "NONE", ctermbg = "NONE" })
    vim.api.nvim_set_hl(0, "NeoTreeNormal", { bg = "NONE", ctermbg = "NONE" })
    vim.api.nvim_set_hl(0, "NeoTreeNormalNC", { bg = "NONE", ctermbg = "NONE" })
    -- etc...
  end,
})

require("vim-options")
require("lazy").setup("plugins")
