-- require('markdown-preview').setup()

local command_center = require("commander")

command_center.add({
  {
    desc='open markdown preview',
    cmd='<cmd>MarkdownPreviewToggle',
    keys={'n', '<leader>mm<CR>'}
  }
})
