-- require('markdown-preview').setup()

local command_center = require("commander")

command_center.add({
  {
    desc='toggle markdown preview',
    cmd='<cmd>MarkdownPreviewToggle<CR>',
    keys={'n', '<leader>mm'}
  }
})
