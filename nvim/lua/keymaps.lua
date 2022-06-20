local map=vim.api.nvim_set_keymap

local opt = {}

local function map(mode, lhs, rhs, opts)
   local options = { noremap = true, silent = true }
   if opts then
      options = vim.tbl_extend("force", options, opts)
   end
   vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map("","<F2>",":mksession! ~/.vim_session<cr>",opt)
map("","<F7>","gg=G<C-o><C-o>",opt)
map("","<F8>",":set autochdir! autochdir?<CR>",opt)
map("i","<C-a>","<home>",opt)
map("i","<C-e>","<end>",opt)
map("c","<C-a>","<home>",opt)
map("c","<C-e>","<end>",opt)
map("i","<C-V>","<esc>pa",opt)
map("c","<C-V>","<C-r>0",opt)
-- CHADtree mappings
map("n", "<C-n>", ":CHADopen<CR>", opt)
