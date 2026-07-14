vim.opt.guicursor =
  "n-v-c:block-blinkwait175-blinkon175-blinkoff175,i-ci:ver25-blinkwait175-blinkon175-blinkoff175,r-cr:hor20"

vim.g.mapleader = ' '

vim.keymap.set("n", "<leader>v", function()
    -- Nếu panel đã tồn tại thì đóng
    for _, win in ipairs(vim.api.nvim_list_wins()) do
        local buf = vim.api.nvim_win_get_buf(win)
        if vim.bo[buf].filetype == "bufpanel" then
            vim.api.nvim_win_close(win, true)
            return
        end
    end

    -- Mở panel bên trái, chiếm 33%
    vim.cmd("topleft vnew")
    vim.cmd("vertical resize 30") -- chỉnh theo màn hình

    vim.bo.buftype = "nofile"
    vim.bo.bufhidden = "wipe"
    vim.bo.swapfile = false
    vim.bo.filetype = "bufpanel"

	local lines = {}
	for _, buf in ipairs(vim.api.nvim_list_bufs()) do
		if vim.bo[buf].buflisted then
			local name = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(buf), ":t")
			table.insert(lines, string.format("%3d  %s", buf, name))
		end
	end
	vim.api.nvim_buf_set_lines(0, 0, -1, false, lines)

    vim.keymap.set("n", "r", function()
		local lines = {}
		for _, buf in ipairs(vim.api.nvim_list_bufs()) do
			if vim.bo[buf].buflisted then
				local name = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(buf), ":t")
				table.insert(lines, string.format("%3d  %s", buf, name))
			end
		end
		vim.api.nvim_buf_set_lines(0, 0, -1, false, lines)
		end, { buffer = true })
end)
-- when text on A4: comment when no use
-- vim.opt.textwidth = 80
vim.opt.textwidth = 110
-- vim.opt.colorcolumn = "81"
-- vim.opt.wrap = true

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

vim.opt.ignorecase = false
vim.opt.smartcase = false
vim.opt.incsearch = true       -- Tìm khi đang gõ
vim.opt.hlsearch = true        -- Highlight kết quả

-- giam lag va giat
vim.opt.cursorline = false
vim.opt.lazyredraw = true
vim.opt.ttimeoutlen = 50       -- Giảm thời gian chờ phím
vim.opt.timeoutlen = 500

-- default cursor
-- vim.opt.guicursor = ""
vim.opt.number = true
vim.opt.relativenumber = true
-- :set rnu
-- :set nornu
vim.opt.scrolloff = 10
vim.opt.sidescrolloff = 15   

-- tat cac thu gay roi
vim.opt.showmode = false
vim.opt.signcolumn = "no"
vim.opt.termguicolors = true

-- statusline toi gian
vim.opt.laststatus = 0
vim.opt.cmdheight = 1
vim.opt.shortmess:append("sI")

vim.opt.foldmethod = "indent" 
vim.opt.foldlevel = 99
vim.opt.fillchars = {
    fold = " "
}
vim.opt.foldcolumn = "1"

-- copy tu vim ra window don gian hon
vim.opt.clipboard = "unnamedplus"

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



-- tat auto formating
vim.api.nvim_create_autocmd("FileType", {
    pattern = "*",
    callback = function()
        vim.opt_local.formatoptions:remove({ "r", "o" })
    end,
})
-- bo comment la duoc
vim.api.nvim_set_hl(0, "Constant", { fg = "#C8C6D4", bg = "#282a36" })
vim.api.nvim_set_hl(0, "String", { fg = "#C8C6D4", bg = "#282a36" })
vim.api.nvim_set_hl(0, "Identifier", { fg = "#C8C6D4", bg = "#282a36" })
vim.api.nvim_set_hl(0, "Function", { fg = "#C8C6D4", bg = "#282a36" })
vim.api.nvim_set_hl(0, "Statement", { fg = "#C8C6D4", bg = "#282a36" })
vim.api.nvim_set_hl(0, "PreProc", { fg = "#C8C6D4", bg = "#282a36" })
vim.api.nvim_set_hl(0, "Type", { fg = "#C8C6D4", bg = "#282a36" })
vim.api.nvim_set_hl(0, "Special", { fg = "#C8C6D4", bg = "#282a36" })
vim.api.nvim_set_hl(0, "Underlined", { fg = "#C8C6D4", bg = "#282a36" })


-- Các nhóm hiển thị thông báo, tìm kiếm & Con trỏ
vim.api.nvim_set_hl(0, "Todo", { fg = "#C8C6D4", bg = "#282a36" })
vim.api.nvim_set_hl(0, "Search", { fg = "#C8C6D4", bg = "#282a36" })
vim.api.nvim_set_hl(0, "IncSearch", { fg = "#C8C6D4", bg = "#282a36" })
vim.api.nvim_set_hl(0, "WarningMsg", { fg = "#C8C6D4", bg = "#282a36" })
vim.api.nvim_set_hl(0, "ModeMsg", { fg = "#C8C6D4", bg = "#282a36" })
vim.api.nvim_set_hl(0, "MoreMsg", { fg = "#C8C6D4", bg = "#282a36" })
vim.api.nvim_set_hl(0, "ErrorMsg", { fg = "#C8C6D4", bg = "#282a36" })
vim.api.nvim_set_hl(0, "Question", { fg = "#C8C6D4", bg = "#282a36" })
vim.api.nvim_set_hl(0, "Error", { fg = "#C8C6D4", bg = "#282a36" })

-- Các nhóm cấu hình giao diện & Nền
vim.api.nvim_set_hl(0, "Normal", { fg = "#C8C6D4", bg = "#282a36" })
vim.api.nvim_set_hl(0, "NonText", { fg = "#C8C6D4", bg = "#282a36" })
vim.api.nvim_set_hl(0, "VertSplit", { fg = "#C8C6D4", bg = "#282a36" })
vim.api.nvim_set_hl(0, "MatchParen", { fg = "#C8C6D4", bg = "#282a36" })
