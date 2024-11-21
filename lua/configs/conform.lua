local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    css = { "prettierd" },
    html = { "prettierd" },
    htmlangular = { "prettierd" },
    cpp = { "my_formatter" },
    javascript = { "prettierd" },
    javascriptreact = { "prettierd" },
    typescript = { "prettierd" },
    typescriptreact = { "prettierd" },
    json = { "prettierd" },
    jsonc = { "prettierd" },
    scss = { "prettierd" },
    vue = { "prettierd" },
    fish = { "fish_indent" },
    sh = { "shfmt", "shellharden" },
    bash = { "shfmt", "shellharden" },
  },

  formatters = {
    my_formatter = {
      command = "clang-format",
      args = { "--style=google" },
      stdin = true,
    },
    shfmt = {
      prepend_args = { "-i", "2" },
    },
    shellharden = {
      prepend_args = { "--transform" },
    },
    -- cbfmt = {
    --   prepend_args = { "--config", os.getenv "HOME" .. "/.config/cbfmt/cbfmt.toml" },
    -- },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },

  notify_on_error = false,
}

return options
