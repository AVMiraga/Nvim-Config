return function()
  local alpha = require "alpha"
  local elements = {
    header = {},
    buttons = {},
    footer = {},
  }

  local function init_elements()
    elements.header = {
      type = "text",
      val = {
        " _____                                                        _____ ",
        "( ╦╦╦ )------------------------------------------------------( ╦╦╦ )",
        " |║║║|                                                        |║║║| ",
        " |║║║|   ██╗     ██╗██╗██████╗  ██████╗            ██████╗    |║║║| ",
        " |║║║|   ████╗ ████║██║██╔══██╗██ ■  ██╗█╗      █╗██ ■  ██╗   |║║║| ",
        " |║║║|   ██╔████╔██║██║██████╔╝██  ■ ██║██╗ █╗ ██║██  ■ ██║   |║║║| ",
        " |║║║|   ██║╚██╔╝██║██║██╔══██╗██    ██║██║███╗██║██    ██║   |║║║| ",
        " |║║║|   █╔╝ ╚═╝  █║██║██║  ██║╚██████╔╝╚███╔███╔╝╚██████╔╝   |║║║| ",
        " |║║║|   █║       ╚╝╚═╝╚═╝  ╚═╝ ╚═════╝  ╚══╝╚══╝  ╚═════╝    |║║║| ",
        " |║║║|   █║                                                   |║║║| ",
        " |║║║|   █║                                                   |║║║| ",
        " |║║║|   █║      _     _   __     ______ _    ,   __          |║║║| ",
        " |║║║|   █║     ' )   /   /  `      /   ' )  /   /  `         |║║║| ",
        " |║║║|   █║      / / /   /--     --/     /--/   /--           |║║║| ",
        " |║║║|   █║     (_(_/   (___,   (_/     /  (_  (___,          |║║║| ",
        " |║║║|   █║                                                   |║║║| ",
        " |║║║|   █║      _ __    __    __  _ __    _   __   /| ､👑    |║║║| ",
        " |║║║|   █║     ' )  )  /  `  / ')' )  ) _//  /  ` (°､ ｡ 7    |║║║| ",
        " |║║║|   █║      /--'  /--   /  /  /--'  /   /--    |､  ~ヽ   |║║║| ",
        " |╩╩╩|   ╚╝     /     (___, (__/  /     /___(___,   じしf_,)〳|╩╩╩| ",
        "(_____)------------------------------------------------------(_____)",
      },
      opts = {
        position = "center",
        hl = "DashboardHeader",
      },
    }
    local version_string = vim.api.nvim_exec2("version", { output = true })
    local version_lines = vim.split(version_string.output, "\n", {})
    elements.footer = {
      type = "text",
      val = { "󰀘 " .. version_lines[2] },
      opts = {
        position = "center",
        hl = "DashboardFooter",
      },
    }
  end
  init_elements()
  alpha.setup {
    opts = {
      margin = 5,
    },
    layout = {
      { type = "padding", val = 1 },
      elements.header,
      { type = "padding", val = 2 },
      {
        type = "group",
        opts = {
          spacing = 1,
        },
        val = elements.buttons,
      },
      elements.footer,
    },
  }
end
