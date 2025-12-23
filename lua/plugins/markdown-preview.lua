-- require('markdown-preview').setup()

local command_center = require("commander")

command_center.add({
  {
    desc = "Toggle markdown preview",
    cmd = "<cmd>MarkdownPreviewToggle<CR>",
    keys = {"n", "<leader>mm"},
    cat = "Markdown"
  }
})
