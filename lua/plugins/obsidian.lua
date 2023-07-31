return {
  "epwalksh/obsidian.nvim",
  config = function()
    require("obsidian").setup({
      dir = vim.fn.expand("~/Documents/ObsidianVault"),
      follow_url_func = function(url)
        vim.fn.jobstart({ "firefox", url })
      end,
      mappings = {},
    })
  end,
}
