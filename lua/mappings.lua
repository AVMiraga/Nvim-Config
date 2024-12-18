require "nvchad.mappings"
local ls = require "luasnip"
-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map("i", "<C-K>", function()
  ls.expand()
end, { silent = true })
map({ "i", "s" }, "<C-L>", function()
  ls.jump(1)
end, { silent = true })
map({ "i", "s" }, "<C-J>", function()
  ls.jump(-1)
end, { silent = true })

map({ "i", "s" }, "<C-E>", function()
  if ls.choice_active() then
    ls.change_choice(1)
  end
end, { silent = true })

-- map("n", "<leader>db", "<cmd> DapToggleBreakpoint <CR>")
-- map("n", "<leader>dr", "<cmd> DapContinue <CR>")
-- map("n", "<F5>", function()
--   require("dap").continue()
-- end)
-- map("n", "<F10>", function()
--   require("dap").step_over()
-- end)
-- map("n", "<F11>", function()
--   require("dap").step_into()
-- end)
-- map("n", "<F12>", function()
--   require("dap").step_out()
-- end)
map("n", "=", [[<cmd>vertical resize +5<cr>]]) -- make the window biger vertically
map("n", "-", [[<cmd>vertical resize -5<cr>]]) -- make the window smaller vertically
map("n", "+", [[<cmd>horizontal resize +2<cr>]]) -- make the window bigger horizontally by pressing shift and =
map("n", "_", [[<cmd>horizontal resize -2<cr>]]) -- make the window smaller horizontally by pressing shift and -
map("n", "<leader>nd", '<cmd> lua require("notify").dismiss({pending = true, silent = true})<CR>')
-- map("n", "<leader>cr", "<cmd> CompetiTest run<CR>")
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
