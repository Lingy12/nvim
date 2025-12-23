local command_center = require("commander")
local opts = { noremap = true, silent = true }

command_center.add({
  {
    desc = "Pick icon",
    cmd = "<cmd>IconPickerNormal<cr>",
    keys = {"n", "<leader><leader>i"},
    cat = "Icons"
  },
  {
    desc = "Yank icon",
    cmd = "<cmd>IconPickerYank<cr>",
    keys = {"n", "<leader><leader>y"},
    cat = "Icons"
  },
  {
    desc = "Insert icon",
    cmd = "<cmd>IconPickerInsert<cr>",
    keys = {"i", "<C-i>"},
    cat = "Icons"
  }
})
-- vim.keymap.set("n", "<Leader><Leader>i", "<cmd>IconPickerNormal<cr>", opts)
-- vim.keymap.set("n", "<Leader><Leader>y", "<cmd>IconPickerYank<cr>", opts) --> Yank the selected icon into register
-- vim.keymap.set("i", "<C-i>", "<cmd>IconPickerInsert<cr>", opts)
