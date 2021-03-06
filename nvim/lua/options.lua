local opt = vim.opt
opt.cursorline = false
opt.scrolloff = 1
opt.sidescrolloff = 5
opt.number = true
opt.relativenumber = true
opt.list = true
opt.listchars = opt.listchars + {tab="  ", trail="•",extends ="#",nbsp="."}
opt.clipboard = "unnamedplus"
opt.timeout = false
--opt.expandtab = true
opt.tabstop = 3
opt.softtabstop = 3
opt.shiftwidth = 2
opt.autoindent = true
opt.smartindent = true
opt.compatible = false
opt.mouse = "a"
opt.ignorecase = true
opt.smartcase = true
--opt.shell = "/bin/fish"
--opt.wildmenu = true
opt.encoding = "utf8"
opt.undofile = true
