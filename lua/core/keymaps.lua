local command_center = require("commander")
vim.g.mapleader = " "

local keymap = vim.keymap

command_center.add({
  {
    desc = "Exit insert mode",
    cmd = "<ESC>",
    keys = {"i", "jk"},
    cat = "General"
  },
  {
    desc = "Move line down",
    cmd = ":m '>+1<CR>gv=gv",
    keys = {"v", "J"},
    cat = "Editing"
  },
  {
    desc = "Move line up",
    cmd = ":m '<-2<CR>gv=gv",
    keys = {"v", "K"},
    cat = "Editing"
  },
  {
    desc = "Split vertical window",
    cmd = "<C-w>v",
    keys = {"n", "<leader>sv"},
    cat = "Windows"
  },
  {
    desc = "Split horizontal window",
    cmd = "<C-w>s",
    keys = {"n", "<leader>sh"},
    cat = "Windows"
  },
  {
    desc = "Clear search highlight",
    cmd = ":nohl<CR>",
    keys = {"n", "<leader>nh"},
    cat = "General"
  },
  {
    desc = "Next buffer",
    cmd = ":bnext<CR>",
    keys = {"n", "<S-L>"},
    cat = "Buffers"
  },
  {
    desc = "Previous buffer",
    cmd = ":bprev<CR>",
    keys = {"n", "<S-H>"},
    cat = "Buffers"
  },
  {
    desc = "Close current buffer",
    cmd = ":BufDel<CR>",
    keys = {"n", "S-C"},
    cat = "Buffers"
  },
  {
    desc = "Toggle file explorer",
    cmd = ":NvimTreeToggle<CR>",
    keys = {"n", "<leader>e"},
    cat = "File Explorer"
  },
  {
    desc = "Open command palette",
    cmd = "<cmd>Telescope commander<CR>",
    keys = {"n", "<leader>cc"},
    cat = "General"
  }
})
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

