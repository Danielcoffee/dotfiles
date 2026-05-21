vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.scrolloff = 12

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
-- vim.opt.expandtab = true

-- vim.opt.smartindent = true
-- vim.opt.cursorline = true

-- copy tu vim ra window don gian hon
vim.opt.clipboard = "unnamedplus"

vim.opt.formatoptions:remove({ "r", "o", "c" }) -- tự động bỏ auto comment khi xuống dòng
