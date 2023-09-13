require("nvim-treesitter.configs").setup{
    ensure_installed = { "c", "toml", "lua", "vim", "help", "javascript", "css", "html", "rust", "python", "lua", "sql", "php", "json", "java", "llvm", "bash", "cpp", "cmake"},
    auto_install = true,
    highlight = {enable = true, addtional_vim_regex_highlighting=false},
    indent = {enable = true},    
    rainbow = {
        enable = true,
        extended_mode = true,
        max_file_lines = nil,
    }
}
