vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true 
vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.smartindent = true

vim.opt.wrap = false 

vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.g.notimeout = true
vim.g.timeoutlen = 500
vim.g.which_key_timeout = 500
vim.cmd('imap <silent><script><expr> <C-e> copilot#Accept("")')
vim.cmd("let g:copilot_no_tab_map = v:true")


