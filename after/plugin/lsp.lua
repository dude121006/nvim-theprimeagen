local lsp = require('lsp-zero')
require('mason').setup()

lsp.preset("recommended")

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})

  lsp.ensure_installed({
	  'eslint',
	  'sumnkeo_lua',
})
end)

lsp.setup()
