return {
  -- Zettlekasten plugin
  "mickael-menu/zk-nvim",
  config = function()
    require("zk").setup()
  end,
}
