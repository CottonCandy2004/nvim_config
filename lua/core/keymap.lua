vim.g.mapleader = " "

local keymap = vim.keymap

-- Versual
-- Movelines
keymap.set("v","J",":m '>+1<CR>gv=gv")
keymap.set("v","K",":m '<-2<CR>gv=gv")

-- Q
-- keymap.set("n",":Q<CR>",":q<CR>")

-- Windows
keymap.set("n","<leader>wl","<C-w>v")
keymap.set("n","<leader>wj","<C-w>s")
keymap.set("n","<leader>e",":Neotree<CR>")
keymap.set("n","<leader>E",":Neotree close<CR>")
-- 切换buffer
keymap.set("n", "<S-L>", ":bnext<CR>")
keymap.set("n", "<S-H>", ":bprevious<CR>")
-- NoHighlight
keymap.set("n","<leader>nh",":nohl<CR>")
-- Tab
keymap.set('v', '<', '<gv', opts)
keymap.set('v', '>', '>gv', opts)
