local map = vim.keymap.set

return {
	"epwalsh/obsidian.nvim",
	version = "*", -- latest release
	lazy = true,
	ft = "markdown",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	opts = {
		workspaces = {
			{
				name = "Notes",
				path = "~/Documents/Notes",
				overrides = {
					notes_subdir = "Zettlekasten",
				},
			},
		},
		daily_notes = {
			folder = "dailies",
		},
		completion = {
			nvim_cmp = true,
			min_chars = 1,
		},
		mappings = {
			-- Overrides the 'gf' mapping to work on markdown/wiki links within your vault.
			["gf"] = {
				action = function()
					return require("obsidian").util.gf_passthrough()
				end,
				opts = { noremap = false, expr = true, buffer = true },
			},
			-- Toggle check-boxes.
			["<leader>ch"] = {
				action = function()
					return require("obsidian").util.toggle_checkbox()
				end,
				opts = { buffer = true },
			},
		},
		new_notes_location = "notes_subdir",
		ui = {
			enable = false,
		},
	},
}
