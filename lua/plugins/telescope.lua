local builtin = require('telescope.builtin')
local actions = require('telescope.actions')
local command_center = require("commander")

-- Configure telescope with buffer deletion mappings
require('telescope').setup({
  defaults = {
    mappings = {
      n = {
        ["<C-d>"] = actions.delete_buffer,
        ["dd"] = actions.delete_buffer,
      },
    },
  },
})

command_center.add({
  {
    desc = "Find files",
    cmd = builtin.find_files,
    keys = {"n", "<leader>ff"},
    cat = "Telescope"
  },
  {
    desc = "Live grep",
    cmd = builtin.live_grep,
    keys = {"n", "<leader>fg"},
    cat = "Telescope"
  },
  {
    desc = "Buffers",
    cmd = builtin.buffers,
    keys = {"n", "<leader>fb"},
    cat = "Telescope"
  },
  {
    desc = "Help tags",
    cmd = builtin.help_tags,
    keys = {"n", "<leader>fh"},
    cat = "Telescope"
  }
})
