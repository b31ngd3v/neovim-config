local opts = { noremap = true, silent = true }

local noremap_opt = { noremap = true }
local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Custom bindings
keymap("n", "S", ":%s//g<Left><Left>", noremap_opt)
keymap("n", "<leader>s", ":noh<cr>", opts)

-- Neovim tree
keymap("n", "<leader>e", ":NvimTreeToggle<cr>", opts)

-- Delete buffer
keymap("n", "<leader>x", ":Bdelete<cr>", opts)

-- Compile and Run Python, Node, C & C++ code
keymap("n", "<leader>.",
  ":w<CR>:if &filetype ==# 'c' || &filetype ==# 'cpp'<CR>:TermExec cmd=\"g++ % -o main && ./main\"<CR>:elseif &filetype ==# 'python'<CR>:TermExec cmd=\"python %\"<CR>:elseif &filetype ==# 'javascript'<CR>:TermExec cmd=\"npm start\"<CR>endif<CR>"
  , opts)

-- Telescope
keymap("n", "<leader>f", "<cmd>Telescope find_files previewer=false hidden=true<cr>", opts)
keymap("n", "<C-t>", "<cmd>Telescope live_grep previewer=false<cr>", opts)

-- Gitsigns
keymap("n", "<leader>c", "<cmd>Gitsigns blame_line<cr>", opts)
keymap("n", "<leader>g", "<cmd>Gitsigns preview_hunk<cr>", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<S-j>", ":m .+1<CR>==", opts)
keymap("v", "<S-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "<S-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<S-k>", ":move '<-2<CR>gv-gv", opts)

-- Terminal --
-- Better terminal navigation
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)
