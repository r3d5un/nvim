return {
  "epwalsh/obsidian.nvim",
  config = function()
    require("obsidian").setup({
      dir = vim.fn.expand("~/Documents/Notes"),
      follow_url_func = function(url)
        vim.fn.jobstart({ "firefox", url })
      end,
      mappings = {},
      disable_frontmatter = false,
      daily_notes = {
        folder = "dailies",
        date_format = "%Y-%m-%d",
      },
    })
  end,
}
