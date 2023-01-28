local keymap = vim.keymap.set

-- FloaTerm configuration
--[[ keymap('n', "<leader>ft", ":FloatermNew --name=myfloat --height=0.8 --width=0.7 --autoclose=2 fish <CR> ") ]]
keymap('n', "<leader>t", ":FloatermToggle myfloat<CR>")
keymap('t', "<Esc>", "<C-\\><C-n>:q<CR>")
