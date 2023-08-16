return {
	'neovim/nvim-lspconfig',
	dependencies = {
		{ 'williamboman/mason.nvim', config = true },
		{ 'j-hui/fidget.nvim', tag = 'legacy', opts = {} },
		{ 'folke/neodev.nvim' },
		{'williamboman/mason-lspconfig.nvim', }
	},
}
