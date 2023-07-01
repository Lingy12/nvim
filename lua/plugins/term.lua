command_center = require("command_center")

function _G.set_terminal_keymaps()
  local opts = {buffer = 0}

  vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
  vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
  vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
  vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
  vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], opts)
end

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')

command_center.add({
  {
    desc = "Toogle terminal", 
    cmd = "<cmd>ToggleTerm<CR>",
    keys = {"n", "<leader>t"}
  },
  {
    desc = "Select terminal",
    cmd = "<cmd>TermSelect<CR",
    keys = {"n", "<leader>s"}
  },
  {
    desc = "Toggle all terminal", 
    cmd = "<cmd> ToggleTermToggleAll<CR>",
    keys = {"n", "<leader>a"}
  }
})
-- vim.keymap.set('n', '<leader>t', "<cmd>ToggleTerm<CR>")
-- vim.keymap.set('n', '<leader>s', "<cmd>TermSelect<CR>")
-- vim.keymap.set('n', '<leader>a', "<cmd>ToggleTermToggleAll<CR>")
