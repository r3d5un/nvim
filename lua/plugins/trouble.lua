return {
	"folke/trouble.nvim",
	opts = { -- settings without a patched font or icons
		icons = false,
		fold_open = "v", -- icon used for open folds
		fold_closed = ">", -- icon used for closed folds
		indent_lines = false, -- add an indent guide below the fold icons
		signs = {
			-- icons / text used for a diagnostic
			error = "error",
			warning = "warn",
			hint = "hint",
			information = "info",
		},
		use_diagnostic_signs = true, -- enabling this will use the signs defined in your lsp client
	},
	cmd = "Trouble",
	keys = {
		{
			"<leader>xx",
			"<cmd>Trouble diagnostics toggle<cr>",
			desc = "Diagnostics (Trouble)",
		},
		{
			"<leader>xw",
			"<cmd>Trouble workspace_diagnostics toggle<cr>",
			desc = "Diagnostics (Trouble)",
		},
		{
			"<leader>xX",
			"<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
			desc = "Buffer Diagnostics (Trouble)",
		},
		{
			"<leader>cs",
			"<cmd>Trouble symbols toggle focus=false<cr>",
			desc = "Symbols (Trouble)",
		},
		{
			"<leader>cl",
			"<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
			desc = "LSP Definitions / references / ... (Trouble)",
		},
		{
			"<leader>xL",
			"<cmd>Trouble loclist toggle<cr>",
			desc = "Location List (Trouble)",
		},
		{
			"<leader>xQ",
			"<cmd>Trouble qflist toggle<cr>",
			desc = "Quickfix List (Trouble)",
		},
	},
}
