local opt = vim.opt

opt.relativenumber = true
opt.number = true

opt.tabstop = 4
opt.expandtab = true
opt.autoindent = true
opt.shiftwidth = 4

opt.wrap = false
opt.cursorline = true
opt.mouse:append("a")
opt.clipboard:append("unnamedplus")
opt.splitright = true
opt.splitbelow = true
opt.ignorecase = true
opt.smartcase = true
opt.termguicolors = true
opt.signcolumn = "yes"
vim.cmd[[colorscheme nord]]
vim.cmd[[au TextYankPost * silent! lua vim.highlight.on_yank()]]
vim.opt.completeopt = { "menuone","noinsert","noselect"}
opt.shortmess = opt.shortmess + { c = true }
vim.api.nvim_set_option('updatetime', 300)

local sign = function(opts)
    vim.fn.sign_define(opts.name, {
        texthl = opts.name,
        text = opts.text,
        numhl = ''
    })
end

sign({name = 'DiagnosticSignError', text = ''})
sign({name = 'DiagnosticSignWarn', text = ''})
sign({name = 'DiagnosticSignHint', text = ''})
sign({name = 'DiagnosticSignInfo', text = ''})
vim.diagnostic.config({
    virtual_text = false,
    signs = true,
    update_in_insert = true,
    underline = true,
    severity_sort = false,
    float = {
        border = 'rounded',
        source = 'always',
        header = '',
        prefix = '',
    },
})

vim.cmd([[
autocmd CursorHold * lua vim.diagnostic.open_float(nil, { focusable = false })
]])

