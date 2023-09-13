vim.g.mapleader = " "
local keymap = vim.keymap.set

-- keymap("n", "<leader>pv", vim.cmd.Ex)

--[[ keymap("v", "J", ":m '>+1<CR>gv=gv") ]]
--[[ keymap("v", "K", ":m '<-2<CR>gv=gv") ]]

keymap("n", "<leader>sv", "<C-w>v")
keymap("n", "<leader>sh", "<C-w>s")

keymap("n", "<leader>nh", ":nohl<CR>")

-- keymap("n", "<M-w>", ":bd<CR>")
keymap("n", "<leader><Right>", ":bn<CR>")
keymap("n", "<leader><Left>", ":bp<CR>")
keymap("n", "<leader><leader>", ":b#<CR>")
keymap("n", "<leader><leader>", ":b#<CR>")
keymap("n", "<leader><BS>", ":bd<CR>")

--[[ keymap("n", "<TAB><Right>", "<C-w><Right>")
keymap("n", "<TAB><Left>", "<C-w><Left>")
keymap("n", "<TAB><Up>", "<C-w><Up>")
keymap("n", "<TAB><Down>", "<C-w><Down>") ]]

keymap("n", "<Enter>", "o<ESC>")
keymap("i", "jk", "<ESC>")
keymap("n", "=", "$")
-- keymap("n", "<M-0>", "zH")
-- keymap("n", "<M-=>", "zL")
keymap("n", "<leader>r", ":!cargo fmt<CR><ESC>")
-- -----------------插件-----------------
-- nvim-tree
keymap("n", "<leader>e", ":NvimTreeToggle<CR>")
keymap("n", "<leader>ef", ":NvimTreeFindFile<CR>")


-- lspsaga
-- Lsp finder find the symbol definition implement reference
-- if there is no implement it will hide
-- when you use action in finder like open vsplit then you can
-- use <C-t> to jump back
-- keymap("n", "gh", "<cmd>Lspsaga lsp_finder<CR>")

-- Code action
-- keymap({"n","v"}, "<leader>ca", "<cmd>Lspsaga code_action<CR>")

-- Rename
-- keymap("n", "gr", "<cmd>Lspsaga rename<CR>")

-- Peek Definition
-- you can edit the definition file in this float window
-- also support open/vsplit/etc operation check definition_action_keys
-- support tagstack C-t jump back
-- keymap("n", "gd", "<cmd>Lspsaga goto_definition<CR>")

-- Show cursor diagnostic
-- also like show_line_diagnostics  support pass ++unfocus
-- keymap("n", "<leader>sc", "<cmd>Lspsaga show_cursor_diagnostics<CR>")

-- Show buffer diagnostic
-- keymap("n", "<leader>sb", "<cmd>Lspsaga show_buf_diagnostics<CR>")

-- Diagnostic jump can use `<c-o>` to jump back
--[[ keymap("n", "[e", "<cmd>Lspsaga diagnostic_jump_prev<CR>")
keymap("n", "]e", "<cmd>Lspsaga diagnostic_jump_next<CR>") ]]

-- Diagnostic jump with filter like Only jump to error
--[[ keymap("n", "[E", function()
    require("lspsaga.diagnostic"):goto_prev({ severity = vim.diagnostic.severity.ERROR })
end)
keymap("n", "]E", function()
    require("lspsaga.diagnostic"):goto_next({ severity = vim.diagnostic.severity.ERROR })
end) ]]

-- Toggle Outline
-- keymap("n","<leader>o", "<cmd>Lspsaga outline<CR>")

-- Hover Doc
-- if there has no hover will have a notify no information available
-- to disable it just Lspsaga hover_doc ++quiet
-- press twice it will jump into hover window
-- keymap("n", "K", "<cmd>Lspsaga hover_doc<CR>")
-- keymap({"n", "t"}, "<A-d>", "<cmd>Lspsaga term_toggle<CR>")
