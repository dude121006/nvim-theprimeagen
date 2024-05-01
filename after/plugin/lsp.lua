--local lsp = require('lsp-zero')
--
--lsp.preset("recommended")
--
--vim.api.nvim_create_autocmd('LspAttach', {
--  desc = 'LSP actions',
--  callback = function(event)
--    local opts = {buffer = event.buf}
--
--    vim.keymap.set('n', '<C-k>', '<cmd>lua vim.lsp.buf.hover()<cr>', opts)
--    vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>', opts)
--    vim.keymap.set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>', opts)
--    vim.keymap.set('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>', opts)
--    vim.keymap.set('n', 'go', '<cmd>lua vim.lsp.buf.type_definition()<cr>', opts)
--    vim.keymap.set('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>', opts)
--    vim.keymap.set('n', 'gs', '<cmd>lua vim.lsp.buf.signature_help()<cr>', opts)
--    vim.keymap.set('n', '<F2>', '<cmd>lua vim.lsp.buf.rename()<cr>', opts)
--    vim.keymap.set({'n', 'x'}, '<F3>', '<cmd>lua vim.lsp.buf.format({async = true})<cr>', opts)
--    vim.keymap.set('n', '<F4>', '<cmd>lua vim.lsp.buf.code_action()<cr>', opts)
--
--    vim.keymap.set('n', 'gl', '<cmd>lua vim.diagnostic.open_float()<cr>', opts)
--    vim.keymap.set('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<cr>', opts)
--    vim.keymap.set('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<cr>', opts) 
--  end
--})
--
--local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()
--
--require('lspconfig').tsserver.setup({capabilities = lsp_capabilities})
--require('lspconfig').rust_analyzer.setup({capabilities = lsp_capabilities})
--require('lspconfig').clangd.setup({capabilities = lsp_capabilities})
--require('lspconfig').cmake.setup({capabilities = lsp_capabilities})
--
---- in this snippet there isn't any autocompletion setup
--

local lsp = require('lsp-zero')

lsp.preset("recommended")

vim.api.nvim_create_autocmd('LspAttach', {
  desc = 'LSP actions',
  callback = function(event)
    local opts = { buffer = event.buf }

    vim.keymap.set('n', '<C-k>', '<cmd>lua vim.lsp.buf.hover()<cr>', opts)
    vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>', opts)
    vim.keymap.set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>', opts)
    vim.keymap.set('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>', opts)
    vim.keymap.set('n', 'go', '<cmd>lua vim.lsp.buf.type_definition()<cr>', opts)
    vim.keymap.set('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>', opts)
    vim.keymap.set('n', 'gs', '<cmd>lua vim.lsp.buf.signature_help()<cr>', opts)
    vim.keymap.set('n', '<F2>', '<cmd>lua vim.lsp.buf.rename()<cr>', opts)
    vim.keymap.set({ 'n', 'x' }, '<F3>', '<cmd>lua vim.lsp.buf.format({async = true})<cr>', opts)
    vim.keymap.set('n', '<F4>', '<cmd>lua vim.lsp.buf.code_action()<cr>', opts)

    vim.keymap.set('n', 'gl', '<cmd>lua vim.diagnostic.open_float()<cr>', opts)
    vim.keymap.set('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<cr>', opts)
    vim.keymap.set('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<cr>', opts)
  end
})

local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()

require('lspconfig').tsserver.setup({ capabilities = lsp_capabilities })
require('lspconfig').rust_analyzer.setup({ capabilities = lsp_capabilities })
require('lspconfig').clangd.setup({
    capabilities = lsp_capabilities,
    cmd = { "clangd", "--background-index", "--log=verbose" },
    init_options = {
        clangdFileStatus = true,
        usePlaceholders = true,
        completeUnimported = true,
        workspace = {
            -- Specify include paths here
            -- For example:
            includePath = {
                "D:/Krishanth/Dev/C++/ExternalLibraries/SFML/SFML-2.6.1-sources/SFML-2.6.1/include/SFML",
                "D:/Krishanth/Dev/C++/Projects/GameOfLife/src/include/SFML"
            }
        }
    },
    filetypes = { "c", "cpp" },
  on_attach = function(client, bufnr)
    -- Add include paths here
    client.resolved_capabilities.document_formatting = true
    client.resolved_capabilities.goto_definition = false
    client.resolved_capabilities.hover = true
    client.resolved_capabilities.rename = true
  end
})
require('lspconfig').cmake.setup({ capabilities = lsp_capabilities })

