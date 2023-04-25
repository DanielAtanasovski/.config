local lsp = require('lsp-zero')

lsp.preset('recommended')

-- List Language Servers
lsp.ensure_installed({
	'tsserver',
	'eslint',
	'lua-lsp',
	'gopls',
	'python-lsp-server'
})

-- keybinds
local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
	['<C-o>'] = cmp.mapping.select_prev_item(cmp_select),
	['<C-p>'] = cmp.mapping.select_next_item(cmp_select),
	['<C-y>'] = cmp.mapping.confirm({ select = true }),
	['<C-Space>'] = cmp.mapping.complete()
})

lsp.set_preferences({
	sign_icons = { }
})


lsp.on_attach(function(client, bufnr)
	lsp.default_keymaps({buffer = bufnr})
end)


lsp.setup()

