local rt = require("rust-tools")
local function on_attach(client, buffer)
    local keymap_opts = { buffer = buffer }
    --[[ vim.keymap.set("n", "<c-]>", vim.lsp.buf.definition, keymap_opts) ]]
    vim.keymap.set("n", "K", rt.hover_actions.hover_actions, keymap_opts)
    vim.keymap.set("n", "<Leader>a", rt.code_action_group.code_action_group, keymap_opts)
    --[[ vim.keymap.set("n", "gD", vim.lsp.buf.implementation, keymap_opts) ]]
    --[[ vim.keymap.set("n", "<c-k>", vim.lsp.buf.signature_help, keymap_opts) ]]
    --[[ vim.keymap.set("n", "1gD", vim.lsp.buf.type_definition, keymap_opts) ]]
    --[[ vim.keymap.set("n", "gr", vim.lsp.buf.references, keymap_opts) ]]
    --[[ vim.keymap.set("n", "g0", vim.lsp.buf.document_symbol, keymap_opts) ]]
    --[[ vim.keymap.set("n", "gW", vim.lsp.buf.workspace_symbol, keymap_opts) ]]
    --[[ vim.keymap.set("n", "gd", vim.lsp.buf.definition, keymap_opts) ]]
end
rt.setup(
    {    tools = {
        runnables = {
            use_telescope = true,
        },
        inlay_hints = {
            auto = true,
            show_parameter_hints = false,
            parameter_hints_prefix = "",
            other_hints_prefix = "",
        },
    },
        server = {
            on_attach = on_attach,
            settings = {
                ["rust-analyzer"] = {
                    checkOnSave = {
                        command = "clippy",
                    },
                },
            },
        },

    }
)
