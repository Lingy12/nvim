local command_center = require("commander")

-- Set up filetype-specific keybinding for file tree managers
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "NvimTree", "neo-tree", "oil", "minifiles", "netrw" },
  callback = function()
    vim.keymap.set("n", "<leader>as", "<cmd>ClaudeCodeTreeAdd<cr>",
      { buffer = true, desc = "Add file from tree to Claude" })
  end
})

command_center.add({
  {
    desc = "Toggle Claude Code",
    cmd = "<cmd>ClaudeCode<cr>",
    keys = {"n", "<leader>ac"},
    cat = "AI/Claude Code"
  },
  {
    desc = "Focus Claude Code",
    cmd = "<cmd>ClaudeCodeFocus<cr>",
    keys = {"n", "<leader>af"},
    cat = "AI/Claude Code"
  },
  {
    desc = "Resume Claude Code",
    cmd = "<cmd>ClaudeCode --resume<cr>",
    keys = {"n", "<leader>ar"},
    cat = "AI/Claude Code"
  },
  {
    desc = "Continue Claude Code",
    cmd = "<cmd>ClaudeCode --continue<cr>",
    keys = {"n", "<leader>aC"},
    cat = "AI/Claude Code"
  },
  {
    desc = "Select Claude model",
    cmd = "<cmd>ClaudeCodeSelectModel<cr>",
    keys = {"n", "<leader>am"},
    cat = "AI/Claude Code"
  },
  {
    desc = "Add current buffer to Claude",
    cmd = "<cmd>ClaudeCodeAdd %<cr>",
    keys = {"n", "<leader>ab"},
    cat = "AI/Claude Code"
  },
  {
    desc = "Send selection to Claude",
    cmd = "<cmd>ClaudeCodeSend<cr>",
    keys = {"v", "<leader>as"},
    cat = "AI/Claude Code"
  },
  {
    desc = "Add file from tree to Claude",
    cmd = "<cmd>ClaudeCodeTreeAdd<cr>",
    keys = {"n", "<leader>as"},
    cat = "AI/Claude Code"
  },
  {
    desc = "Accept Claude diff",
    cmd = "<cmd>ClaudeCodeDiffAccept<cr>",
    keys = {"n", "<leader>aa"},
    cat = "AI/Claude Code"
  },
  {
    desc = "Deny Claude diff",
    cmd = "<cmd>ClaudeCodeDiffDeny<cr>",
    keys = {"n", "<leader>ad"},
    cat = "AI/Claude Code"
  }
})
