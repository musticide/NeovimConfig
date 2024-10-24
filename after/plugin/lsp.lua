local lsp_zero = require('lsp-zero')

local lspconfig = require('lspconfig')

local util = require 'lspconfig.util'
require("lspconfig.configs").shader_ls = {

    default_config = {
        cmd = { 'shader-ls', '--stdio' },
        filetypes = { 'shader', 'shaderlab', 'hlsl' },
        root_dir = function(fname)
            return util.root_pattern '*.sln' (fname) or util.root_pattern '*.csproj' (fname)
        end,
    },
    docs = {
        description = [[
https://github.com/shader-ls/shader-language-server

To install run:
"dotnet tool install --global shader-ls"

add "$HOME/.dotnet/tools" to PATH on Windows

Language server implementation for ShaderLab
]],
    },
}

lspconfig.shader_ls.setup({
    on_attach = function(client, bufnr)
        local buf_set_keymap = vim.api.nvim_buf_set_keymap
        local opts = { noremap = true, silent = true }

        buf_set_keymap(bufnr, 'n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
        buf_set_keymap(bufnr, 'n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
        buf_set_keymap(bufnr, 'n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
    end,
    capabilities = vim.lsp.protocol.make_client_capabilities(),
    flags = {
        debounce_text_changes = 150,
    },
})

lsp_zero.on_attach(function(client, bufnr)
    local opts = { buffer = bufnr, remap = false }

    vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
    vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
    vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
    vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
    vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
    vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
    vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
    vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
    vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
    vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
    vim.keymap.set("n", "<leader>fm", vim.lsp.buf.format, opts)
end)

require('mason').setup({})
require('mason-lspconfig').setup({
    ensure_installed = { 'rust_analyzer', 'clangd', 'lua_ls', 'csharp_ls' },
    handlers = {
        lsp_zero.default_setup,
        lua_ls = function()
            local lua_opts = lsp_zero.nvim_lua_ls()
            require('lspconfig').lua_ls.setup(lua_opts)
        end,
    }
})


-- lspconfig.shader_ls.setup()

local cmp = require('cmp')
local cmp_select = { behavior = cmp.SelectBehavior.Select }

local ls = require('luasnip')

require("luasnip.loaders.from_vscode").lazy_load()

cmp.setup({
    snippet = {
        expand = function(args)
            ls.lsp_expand(args.body)
        end,
    },
    sources = {
        { name = 'path' },
        { name = 'nvim_lsp' },
        { name = 'nvim_lua' },
        { name = 'luasnip', keyword_length = 2 },
        { name = 'buffer',  keyword_length = 3 },
    },
    formatting = lsp_zero.cmp_format(),
    mapping = cmp.mapping.preset.insert({
        ['<S-Tab>'] = cmp.mapping.select_prev_item(cmp_select),
        ['<Tab>'] = cmp.mapping.select_next_item(cmp_select),
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
        ['<C-Space>'] = cmp.mapping.complete(),
    }),
})

-- local lsp = require 'lspconfig'
-- local util = require 'lspconfig.util'

-- vim.tbl_deep_extend('keep', lsp, {
--     -- lsp_name = {
--     -- 	cmd = { 'command' },
--     -- 	filetypes = 'filetype',
--     -- 	name = 'lsp_name',
--     -- }
--     shader_ls = {
--         cmd = { 'shader-ls', '--stdio' },
--         filetypes = { 'shader', 'shaderlab' },
--         root_dir = function(fname)
--             return util.root_pattern '*.sln' (fname) or util.root_pattern '*.csproj' (fname)
--         end,
--     },
--
-- })
