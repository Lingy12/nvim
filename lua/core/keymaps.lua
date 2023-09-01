local command_center = require("commander")
vim.g.mapleader = " "

local keymap = vim.keymap

command_center.add({
  {
    desc = "Exit nvim",
    cmd = "<ESC>",
    keys = {"i", "jk"}
  },
  {
    desc = "Move cursor and select line below",
    cmd = ":m '>+1<CR>gv=gv",
    keys = {"v", "J"}
  },
  {
    desc = "Move cursor and select line above",
    cmd = ":m '<-2<CR>gv=gv",
    keys = {"v", "K"}
  },
  {
    desc = "Split a vertical window",
    cmd = "<C-w>v",
    keys = {"n", "<leader>sv"}
  },
  {
    desc = "Split a horizontal window",
    cmd = "<C-w>s",
    keys = {"n", "<leader>sh"}
  },
  {
    desc = "Cancel highlight",
    cmd = ":nohl<CR>",
    keys = {"n", "<leader>nh"}
  },
  {
    desc = "Next buffer",
    cmd = ":bnext<CR>",
    keys = {"n", "<S-L>"}
  },
  {
    desc = "Previous buffer",
    cmd = ":bprev<CR>",
    keys = {"n", "<S-H>"}
  },
  {
    desc = "Close current buffer",
    cmd = ":BufDel<CR>",
    keys = {"n", "S-C"}
  },
  {
    desc = "Toggle nvim tree",
    cmd = ":NvimTreeToggle<CR>",
    keys = {"n", "<leader>e"}
  }
})

-- short cut for command command_center
keymap.set("n", "<leader>cc", "<cmd>Telescope commander<CR>")
-- keymap.set("i", "jk", "<ESC>")
--
-- keymap.set("v", "J", ":m '>+1<CR>gv=gv")
-- keymap.set("v", "K", ":m '<-2<CR>gv=gv")
--
-- keymap.set("n", "<leader>sv", "<C-w>v")
-- keymap.set("n", "<leader>sh", "<C-w>s")
--
-- keymap.set("n", "<leader>nh", ":nohl<CR>")
--
-- keymap.set("n", "<S-L>", ":bnext<CR>")
-- keymap.set("n", "<S-H>", ":bprev<CR>")
-- keymap.set("n", "<S-C>", ":BufDel<CR>")
-- keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")
--

