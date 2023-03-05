-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      -- defaults
      "bash",
      "c",
      "cpp",
      "html",
      "javascript",
      "json",
      "lua",
      "luap",
      "markdown",
      "markdown_inline",
      "python",
      "query",
      "regex",
      "tsx",
      "typescript",
      "vim",
      "yaml",
      -- additional
      "rust",
      "sql",
      "c_sharp",
      "java",
      "css",
      "dockerfile",
      "toml",
      "r",
      "latex",
    },
  },
}
