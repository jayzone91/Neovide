require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = { "lua_ls" },
})

require("lazydev").setup({
	library = {
		{ path = "&{3rd}/luv/library", words = { "vim%.uv" } },
	}
})

local has_cmp, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")

local capabilites = vim.tbl_deep_extend("force", {}, vim.lsp.protocol.make_client_capabilities(),
	has_cmp and cmp_nvim_lsp.default_capabilities() or {})

vim.lsp.config("lua_ls", {
	capabilities = capabilities,
})
