local wk = require("which-key")

return {
  wk.register({
    n = {
      name = "notes",
      r = "zk",
    },
  }, { prefix = "<leader>" }),
  wk.register({
    g = { name = "goto" },
  }, { prefix = "<leader>c" }),
  wk.register({
    h = { name = "hop" },
  }, { prefix = "<leader>" }),
}
