-- Set leader key
vim.g.mapleader = ' '

vim.keymap.set('n', '<leader>b', function()
    vim.cmd('ls')
    local bufnum = vim.fn.input(':b ')
    if bufnum ~= '' then
        vim.cmd('b ' .. bufnum)
    end
end, { desc = 'List buffers and switch' })

-- vim.opt.colorcolumn = "120"
vim.opt.wrap = false
vim.opt.textwidth = 0

-- hidden trong buffer
vim.opt.hidden = true
-- them search enegine la grep vao
vim.opt.grepprg = "rg --vimgrep"

vim.opt.nrformats = ""			-- treat all numbers as decimal
vim.opt.shellcmdflag = "-c"          -- đơn giản hóa shell
-- tat ho tro chuot
vim.opt.mouse = ""				
vim.opt.title = true -- khong doi tieu de
vim.opt.titlestring = "%t"

vim.opt.shortmess = "aIcF"     -- Giảm thông báo
vim.opt.showtabline = 0        -- Tắt tab line
vim.opt.pumheight = 0

--vim.opt.compatible = false     -- Tắt chế độ tương thích Vi
vim.opt.swapfile = false       -- Không tạo file swap
vim.opt.backup = false         -- Không tạo backup
vim.opt.writebackup = false
vim.opt.errorbells = false     -- Tắt tiếng chuông lỗi
vim.opt.visualbell = false

vim.opt.tabstop = 4            -- Tab = 4 spaces
vim.opt.shiftwidth = 4         -- >> << = 4 spaces
vim.opt.softtabstop = 4

vim.opt.ignorecase = true      -- Không phân biệt hoa thường
vim.opt.smartcase = true       -- Có chữ hoa thì phân biệt
vim.opt.incsearch = true       -- Tìm khi đang gõ
vim.opt.hlsearch = true        -- Highlight kết quả

-- giam lag va giat
vim.opt.cursorline = false
vim.opt.lazyredraw = true
vim.opt.ttimeoutlen = 50       -- Giảm thời gian chờ phím
vim.opt.timeoutlen = 500

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 15                          -- Keep 8 columns left/right of cursor

-- tat cac thu gay roi
vim.opt.showmode = false
vim.opt.signcolumn = "no"
vim.opt.termguicolors = true

-- statusline toi gian
vim.opt.laststatus = 0

vim.opt.foldmethod = "indent" 
vim.opt.foldlevel = 99
vim.opt.fillchars = {
    fold = " "
}
vim.opt.foldcolumn = "1"

-- copy tu vim ra window don gian hon
vim.opt.clipboard = "unnamedplus"

-- === GIAO DIỆN TỐI GIẢN ===
vim.opt.fillchars = {
    eob = " ",                 -- Không hiển thị ~ ở cuối file
    fold = " ",
    foldopen = " ",
    foldsep = " ",
    foldclose = " "
}
----abbreviations
vim.api.nvim_set_hl(0, "TodoNote", { fg = "#FFFF00", bold = true })
vim.api.nvim_set_hl(0, "FixNote",  { fg = "#FF0000", bold = true })
vim.api.nvim_set_hl(0, "NoteNote", { fg = "#00FFFF", bold = true })
vim.api.nvim_set_hl(0, "NoteNote1", { fg = "#2249AB", bold = true })
vim.fn.matchadd("TodoNote", "TODO:")
vim.fn.matchadd("FixNote", "FIXME:")
vim.fn.matchadd("NoteNote", "NOTE:")
vim.fn.matchadd("NoteNote1", "DONE:")

-- Ép buộc nền đen và chữ trắng cho tất cả các nhóm highlight
vim.api.nvim_set_hl(0, "Normal", { fg = "#D0D0D0", bg = "#161616" })
vim.api.nvim_set_hl(0, "NonText", { fg = "#D0D0D0", bg = "#161616" })
-- vim.api.nvim_set_hl(0, "Comment", { fg = "#D0D0D0", bg = "#161616" })
vim.api.nvim_set_hl(0, "Constant", { fg = "#D0D0D0", bg = "#161616" })
vim.api.nvim_set_hl(0, "String", { fg = "#D0D0D0", bg = "#161616" })
vim.api.nvim_set_hl(0, "Identifier", { fg = "#D0D0D0", bg = "#161616" })
vim.api.nvim_set_hl(0, "Function", { fg = "#D0D0D0", bg = "#161616" })
vim.api.nvim_set_hl(0, "Statement", { fg = "#D0D0D0", bg = "#161616" })
vim.api.nvim_set_hl(0, "PreProc", { fg = "#D0D0D0", bg = "#161616" })
vim.api.nvim_set_hl(0, "Type", { fg = "#D0D0D0", bg = "#161616" })
vim.api.nvim_set_hl(0, "Special", { fg = "#D0D0D0", bg = "#161616" })
vim.api.nvim_set_hl(0, "Underlined", { fg = "#D0D0D0", bg = "#161616" })
vim.api.nvim_set_hl(0, "Error", { fg = "#D0D0D0", bg = "#161616" })
-- vim.api.nvim_set_hl(0, "Todo", { fg = "#D0D0D0", bg = "#161616" })
-- vim.api.nvim_set_hl(0, "Cursor", { fg = "#D0D0D0", bg = "#161616" })
vim.api.nvim_set_hl(0, "Cursor", { fg = "#FFFF00", bg = "#161616" })
vim.api.nvim_set_hl(0, "CursorLine", { fg = "#D0D0D0", bg = "#161616" })
vim.api.nvim_set_hl(0, "LineNr", { fg = "#D0D0D0", bg = "#161616" })
vim.api.nvim_set_hl(0, "StatusLine", { fg = "#D0D0D0", bg = "#161616" })
vim.api.nvim_set_hl(0, "StatusLineNC", { fg = "#D0D0D0", bg = "#161616" })
vim.api.nvim_set_hl(0, "VertSplit", { fg = "#D0D0D0", bg = "#161616" })
-- vim.api.nvim_set_hl(0, "Visual", { bg = "#D0D0D0", fg = "#161616" })
-- vim.api.nvim_set_hl(0, "Search", { fg = "#D0D0D0", bg = "#161616" })
-- vim.api.nvim_set_hl(0, "IncSearch", { fg = "#D0D0D0", bg = "#161616" })
vim.api.nvim_set_hl(0, "MatchParen", { fg = "#D0D0D0", bg = "#161616" })
vim.api.nvim_set_hl(0, "ModeMsg", { fg = "#D0D0D0", bg = "#161616" })
vim.api.nvim_set_hl(0, "MoreMsg", { fg = "#D0D0D0", bg = "#161616" })
vim.api.nvim_set_hl(0, "ErrorMsg", { fg = "#D0D0D0", bg = "#161616" })
vim.api.nvim_set_hl(0, "WarningMsg", { fg = "#D0D0D0", bg = "#161616" })
vim.api.nvim_set_hl(0, "Question", { fg = "#D0D0D0", bg = "#161616" })

-- tat auto formating
vim.api.nvim_create_autocmd("FileType", {
    pattern = "*",
    callback = function()
        vim.opt_local.formatoptions:remove({ "r", "o" })
    end,
})
