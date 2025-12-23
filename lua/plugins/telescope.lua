local builtin = require('telescope.builtin')
local command_center = require("commander")

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
