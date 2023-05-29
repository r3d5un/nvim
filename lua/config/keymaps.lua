-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local function map(mode, lhs, rhs, opts)
  local keys = require("lazy.core.handler").handlers.keys
  ---@cast keys LazyKeysHandler
  -- do not create the keymap if a lazy keys handler exists
  if not keys.active[keys.parse({ lhs, mode = mode }).id] then
    opts = opts or {}
    opts.silent = opts.silent ~= false
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

--
-- SEARCH
--

map("n", "<leader>sf", function()
  require("telescope.builtin").live_grep()
end, { noremap = true, silent = true, desc = "Search file contents" })

--
-- NOTES
--

map("n", "<leader>nrs", function()
  require("zk").index()
end, { noremap = true, silent = true, desc = "Index notebook" })

map("n", "<leader>nrn", function()
  require("zk").new()
end, { noremap = true, silent = true, desc = "New note" })

map(
  "n",
  "<leader>nri",
  "<Cmd>'<,'>ZkNewFromTitleSelection<CR>",
  { noremap = true, silent = true, desc = "New note with title" }
)

map(
  "n",
  "<leader>nrI",
  "<Cmd>'<,'>ZkNewFromContentSelection<CR>",
  { noremap = true, silent = true, desc = "New note with content" }
)

map(
  "n",
  "<leader>nrf",
  "<Cmd>ZkNotes { sort = { 'modified' } }<CR>",
  { noremap = true, silent = true, desc = "Open notes" }
)

map(
  "n",
  "<leader>nrr",
  "<Cmd>ZkBacklinks<CR>",
  { noremap = true, silent = true, desc = "Backlinks" }
)

map(
  "n",
  "<leader>nrc",
  "<Cmd>ZkLinks<CR>",
  { noremap = true, silent = true, desc = "Links" }
)

map(
  "n",
  "<leader>nrl",
  "<Cmd>'<,'>ZkInsertLinkAtSelection<CR>",
  { noremap = true, silent = true, desc = "Insert Link" }
)

map(
  "n",
  "<leader>nrm",
  "<Cmd>'<,'>ZkMatch<CR>",
  { noremap = true, silent = true, desc = "Find match" }
)

map(
  "n",
  "<leader>nrt",
  "<Cmd>ZkTags<CR>",
  { noremap = true, silent = true, desc = "Find by tag" }
)

--
-- WINDOW MANAGEMENT
--
map(
  "n",
  "<leader>wh",
  "<C-w>h",
  { noremap = true, silent = true, desc = "Go to left window" }
)
map(
  "n",
  "<leader>wj",
  "<C-w>j",
  { noremap = true, silent = true, desc = "Go to lower window" }
)
map(
  "n",
  "<leader>wk",
  "<C-w>k",
  { noremap = true, silent = true, desc = "Go to upper window" }
)
map(
  "n",
  "<leader>wl",
  "<C-w>l",
  { noremap = true, silent = true, desc = "Go to right window" }
)

map(
  "n",
  "<leader>wH",
  "<C-w>H",
  { noremap = true, silent = true, desc = "Move window left" }
)
map(
  "n",
  "<leader>wj",
  "<C-w>J",
  { noremap = true, silent = true, desc = "Move window down" }
)
map(
  "n",
  "<leader>wK",
  "<C-w>K",
  { noremap = true, silent = true, desc = "Move window up" }
)
map(
  "n",
  "<leader>wL",
  "<C-w>L",
  { noremap = true, silent = true, desc = "Move window right" }
)

map(
  "n",
  "<leader>wv",
  "<C-W>v",
  { noremap = true, silent = true, desc = "Split window right" }
)
map(
  "n",
  "<leader>ws",
  "<C-W>s",
  { noremap = true, silent = true, desc = "Split window right" }
)

--
-- Code bindings
--

map(
  "n",
  "<leader>cgd",
  "<Cmd>lua vim.lsp.buf.definition()<CR>",
  { noremap = true, silent = true, desc = "Goto definition" }
)
map(
  "n",
  "<leader>cgD",
  "<Cmd>lua vim.lsp.buf.declaration()<CR>",
  { noremap = true, silent = true, desc = "Goto declaration" }
)
map(
  "n",
  "<leader>cgi",
  "<Cmd>lua vim.lsp.buf.implementation()<CR>",
  { noremap = true, silent = true, desc = "Goto implementations" }
)
map(
  "n",
  "<leader>cgs",
  "<Cmd>lua vim.lsp.buf.document_symbol()<CR>",
  { noremap = true, silent = true, desc = "List buffer symbols" }
)
map(
  "n",
  "<leader>cgS",
  "<Cmd>lua vim.lsp.buf.workspace_symbol()<CR>",
  { noremap = true, silent = true, desc = "List worskpace symbols" }
)
map(
  "n",
  "<leader>cgr",
  "<Cmd>lua vim.lsp.buf.references()<CR>",
  { noremap = true, silent = true, desc = "List references" }
)
map(
  "n",
  "<leader>cgt",
  "<Cmd>lua vim.lsp.type_definition()<CR>",
  { noremap = true, silent = true, desc = "Goto type definition" }
)
map(
  "n",
  "<leader>ch",
  "<Cmd>lua vim.lsp.buf.hover()<CR>",
  { noremap = true, silent = true, desc = "Hover context" }
)
map(
  "n",
  "<leader>cH",
  "<Cmd>lua vim.lsp.buf.signature_help()<CR>",
  { noremap = true, silent = true, desc = "Signature help text" }
)

--
-- Hop
--
map(
  "n",
  "<leader>hw",
  ":HopWord<CR>",
  { noremap = true, silent = true, desc = "Hop to word" }
)
map(
  "n",
  "<leader>hl",
  ":HopLine<CR>",
  { noremap = true, silent = true, desc = "Hop to line" }
)
map(
  "n",
  "<leader>hc",
  ":HopChar2<CR>",
  { noremap = true, silent = true, desc = "Hop to char" }
)
map(
  "n",
  "<leader>hp",
  ":HopPattern<CR>",
  { noremap = true, silent = true, desc = "Hop to pattern" }
)

--
-- rest client
--
map(
  "n",
  "<leader>rr",
  "<Plug>RestNvim",
  { noremap = true, silent = true, desc = "Run request at cursor" }
)

map(
  "n",
  "<leader>rl",
  "<Plug>RestNvimLast",
  { noremap = true, desc = "Repeat last request" }
)

map(
  "n",
  "<leader>rp",
  "<Plug>RestNvimPreview",
  { noremap = true, silent = true, desc = "Preview request at cursor" }
)

--
-- Move highlighted lines
--
map(
  "v",
  "J",
  ":m '>+1<CR>gv=gv",
  { noremap = true, silent = true, desc = "Move highlighted linges down" }
)
map(
  "v",
  "K",
  ":m '<-2<CR>gv=gv",
  { noremap = true, silent = true, desc = "Move highlighted lines up" }
)

--
-- Half page movement
--
map("n", "<C-d>", "<C-d>zz", {
  noremap = true,
  silent = true,
  desc = "Move half page down with cursor in the middle",
})
map("n", "<C-u>", "<C-u>zz", {
  noremap = true,
  silent = true,
  desc = "Move half page up with cursor in the middle",
})

--
-- Make search results stay in the middle
--
map("n", "n", "nzzzv", {
  noremap = true,
  silent = true,
  desc = "Next search result stays in the middle",
})
map("n", "N", "Nzzzv", {
  noremap = true,
  silent = true,
  desc = "Previous search result stays in the middle",
})

map(
  "n",
  "Q",
  "<nop>",
  { noremap = true, silent = true, desc = "Disable shortcut for ex mode" }
)

--
-- Zen mode
--
map(
  "n",
  "<leader>z",
  ":ZenMode<CR>",
  { noremap = true, silent = true, desc = "Toggle Zen Mode" }
)

--
-- tmux
--
map(
  "n",
  "<C-h>",
  "<Cmd> TmuxNavigateLeft<CR>",
  { noremap = true, silent = true, desc = "tmux window left" }
)
map(
  "n",
  "<C-l>",
  "<Cmd> TmuxNavigateRight<CR>",
  { noremap = true, silent = true, desc = "tmux window right" }
)
map(
  "n",
  "<C-j>",
  "<Cmd> TmuxNavigateDown<CR>",
  { noremap = true, silent = true, desc = "tmux window down" }
)
map(
  "n",
  "<C-k>",
  "<Cmd> TmuxNavigateUp<CR>",
  { noremap = true, silent = true, desc = "tmux window up" }
)
