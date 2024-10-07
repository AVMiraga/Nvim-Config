return {
  {
    "MunifTanjim/nui.nvim",
  },
  {
    "xeluxee/competitest.nvim",
    dependencies = "MunifTanjim/nui.nvim",
    event = "VeryLazy",
    config = function()
      require "configs.ctconf"
    end,
  },
}
