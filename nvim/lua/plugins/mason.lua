return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup({
				ui = {
					icons = {
						package_installed = "✓",
						package_pending = "➜",
						package_uninstalled = "✗",
					},
				},
			})
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"bashls",
					"clangd",
					"cmake",
					"cssls",
					"dockerls",
					--"hyprls",
					--"java_language_server",
					"ts_ls",
					"jsonls",
					"marksman",
					--"nil_ls",
          --"rnix",
					"ruff",
					"rust_analyzer",
					"harper_ls",
					"vimls",
					"yamlls",
					"zls",
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({})
	    lspconfig.zls.setup({})
      lspconfig.ruff.setup({})
    end,
	},
}
