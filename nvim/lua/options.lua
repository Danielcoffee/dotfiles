vim.opt.nrformats = ""			-- treat all numbers as decimal
vim.opt.shellcmdflag = "-c"          -- đơn giản hóa shell
-- tat ho tro chuot
vim.opt.mouse = ""				
vim.opt.title = false -- khong doi tieu de
-- === KHÔNG HIỂN THỊ NHỮNG THỨ KHÔNG CẦN ===
vim.opt.shortmess = "aIcF"     -- Giảm thông báo
vim.opt.showtabline = 0        -- Tắt tab line
vim.opt.pumheight = 0

-- === TẮT TẤT CẢ TÍNH NĂNG KHÔNG CẦN THIẾT ===
vim.opt.compatible = false     -- Tắt chế độ tương thích Vi
vim.opt.swapfile = false       -- Không tạo file swap
vim.opt.backup = false         -- Không tạo backup
vim.opt.writebackup = false
vim.opt.errorbells = false     -- Tắt tiếng chuông lỗi
vim.opt.visualbell = false
-- === INDENT (CÁCH DÒNG) - QUAN TRỌNG ===
vim.opt.tabstop = 4            -- Tab = 4 spaces
vim.opt.shiftwidth = 4         -- >> << = 4 spaces
vim.opt.softtabstop = 4
-- === TÌM KIẾM ===
vim.opt.ignorecase = true      -- Không phân biệt hoa thường
vim.opt.smartcase = true       -- Có chữ hoa thì phân biệt
vim.opt.incsearch = true       -- Tìm khi đang gõ
vim.opt.hlsearch = true        -- Highlight kết quả

-- giam lag va giat
vim.opt.cursorline = false
vim.opt.lazyredraw = true
vim.opt.ttimeoutlen = 50       -- Giảm thời gian chờ phím
vim.opt.timeoutlen = 500

-- vim.opt.number = true
-- vim.opt.relativenumber = true
vim.opt.scrolloff = 10
vim.opt.sidescrolloff = 8                          -- Keep 8 columns left/right of cursor

-- tat cac thu gay roi
vim.opt.showmode = false
vim.opt.signcolumn = "no"
vim.opt.termguicolors = true

-- statusline toi gian
vim.opt.laststatus = 0

-- collapse & expand function
--zc	close fold
--zo	open fold
--zM	collapse ALL
--zR	expand ALL 
--za	toggle fold
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

