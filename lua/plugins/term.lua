command_center = require("commander")

command_center.add({
  {
    desc = "Exit terminal mode",
    cmd = [[<C-\><C-n>]],
    keys = {"t", "<esc>"},
    cat = "Terminal"
  },
  {
    desc = "Exit terminal mode (jk)",
    cmd = [[<C-\><C-n>]],
    keys = {"t", "jk"},
    cat = "Terminal"
  },
  {
    desc = "Navigate to left window",
    cmd = [[<Cmd>wincmd h<CR>]],
    keys = {"t", "<C-h>"},
    cat = "Terminal"
  },
  {
    desc = "Navigate to down window",
    cmd = [[<Cmd>wincmd j<CR>]],
    keys = {"t", "<C-j>"},
    cat = "Terminal"
  },
  {
    desc = "Navigate to up window",
    cmd = [[<Cmd>wincmd k<CR>]],
    keys = {"t", "<C-k>"},
    cat = "Terminal"
  },
  {
    desc = "Navigate to right window",
    cmd = [[<Cmd>wincmd l<CR>]],
    keys = {"t", "<C-l>"},
    cat = "Terminal"
  },
  {
    desc = "Window command in terminal",
    cmd = [[<C-\><C-n><C-w>]],
    keys = {"t", "<C-w>"},
    cat = "Terminal"
  },
  {
    desc = "Toggle terminal",
    cmd = "<cmd>ToggleTerm<CR>",
    keys = {"n", "<leader>t"},
    cat = "Terminal"
  },
  {
    desc = "Select terminal",
    cmd = "<cmd>TermSelect<CR>",
    keys = {"n", "<leader>s"},
    cat = "Terminal"
  },
  {
    desc = "Toggle all terminals",
    cmd = "<cmd>ToggleTermToggleAll<CR>",
    keys = {"n", "<leader>a"},
    cat = "Terminal"
  }
})
