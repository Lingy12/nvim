require('telekasten').setup({
  home = vim.fn.expand("~/zettelkasten"), -- Put the name of your notes directory here
})

local command_center = require("command_center")

command_center.add({
  {
    desc = "Open note panel", 
    cmd = "<cmd>Telekasten panel<CR>",
    keys = {"n", "<leader>z"}
  },
  {
    desc = "Find notes",
    cmd = "<cmd>Telekasten find_notes<CR>",
    keys = {"n", "<leader>zf"}
  },
{
    desc = "Search notes",
    cmd = "<cmd>Telekasten search_notes<CR>",
    keys = {"n", "<leader>zg"}
  },
{
    desc = "Goto today",
    cmd = "<cmd>Telekasten goto_today<CR>",
    keys = {"n", "<leader>zd"}
  },
{
    desc = "Follow link",
    cmd = "<cmd>Telekasten follow_link<CR>",
    keys = {"n", "<leader>zz"}
  },
{
    desc = "Create new note",
    cmd = "<cmd>Telekasten new note<CR>",
    keys = {"n", "<leader>zn"}
  },
{
    desc = "Show calendar",
    cmd = "<cmd>Telekasten show_calendar<CR>",
    keys = {"n", "<leader>zc"}
  },
  {
    desc = "Show back links",
    cmd = "<cmd>Telekasten show_backlinks<CR>",
    keys = {"n", "<leader>zb"}
  },
  {
    desc = "Insert image link",
    cmd = "<cmd>Telekasten insert_img_link<CR>",
    keys = {"n", "<leader>zI"}
  },
  {
    desc = "Insert link",
    cmd = "<cmd>Telekasten insert_link<CR>",
    keys = {"i", "[["}
  }
})


-- Launch panel if nothing is typed after <leader>z
-- vim.keymap.set("n", "<leader>z", "<cmd>Telekasten panel<CR>")

-- Most used functions
-- vim.keymap.set("n", "<leader>zf", "<cmd>Telekasten find_notes<CR>")
-- vim.keymap.set("n", "<leader>zg", "<cmd>Telekasten search_notes<CR>")
-- vim.keymap.set("n", "<leader>zd", "<cmd>Telekasten goto_today<CR>")
-- vim.keymap.set("n", "<leader>zz", "<cmd>Telekasten follow_link<CR>")
-- vim.keymap.set("n", "<leader>zn", "<cmd>Telekasten new_note<CR>")
-- vim.keymap.set("n", "<leader>zc", "<cmd>Telekasten show_calendar<CR>")
-- vim.keymap.set("n", "<leader>zb", "<cmd>Telekasten show_backlinks<CR>")
-- vim.keymap.set("n", "<leader>zI", "<cmd>Telekasten insert_img_link<CR>")
--
-- -- Call insert link automatically when we start typing a link
-- vim.keymap.set("i", "[[", "<cmd>Telekasten insert_link<CR>")
--
