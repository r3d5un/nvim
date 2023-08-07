return {
  "epwalsh/obsidian.nvim",
  config = function()
    require("obsidian").setup({
      dir = vim.fn.expand("~/Documents/Notes"),
      notes_subdir = "Zettlekasten",
      follow_url_func = function(url)
        vim.fn.jobstart({ "firefox", url })
      end,
      mappings = {},
      disable_frontmatter = false,
      daily_notes = {
        folder = "dailies",
        date_format = "%Y-%m-%d",
      },
      completion = {
        new_notes_location = "notes_subdir",
      },
    })
  end,
}
