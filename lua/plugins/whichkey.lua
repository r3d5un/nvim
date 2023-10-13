local wk = require("which-key")

return {
  wk.register({
    n = {
      name = "notes",
    },
  }, { prefix = "<leader>" }),
  wk.register({
    g = { name = "goto" },
  }, { prefix = "<leader>c" }),
  wk.register({
    r = { name = "rest" },
  }, { prefix = "<leader>" }),
  wk.register({
    z = { name = "zen" },
  }, { prefix = "<leader>" }),
}
