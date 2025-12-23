require("mason").setup({
  ui = {
      icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗"
      }
  }
})

require("mason-lspconfig").setup({
  ensure_installed = {
    "lua_ls", "pyright"
  },
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()

vim.lsp.enable('lua_ls',{
   capabilities = capabilities,
})

vim.lsp.enable('pyright')
