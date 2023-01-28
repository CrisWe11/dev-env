local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end
local packer_bootstrap = ensure_packer()

vim.cmd([[
    augroup packer_user_config
        autocmd!
        autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
    augroup end
]])

return require('packer').startup(function(use)
    -- Packer
    use 'wbthomason/packer.nvim'

    -- 模糊搜索
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- 侧边导航栏
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional, for file icons
        }
    }

    -- tmux,侧边栏 光标快速移动
    use("christoomey/vim-tmux-navigator")

    -- nord主题
    --[[ use 'shaunsingh/nord.nvim' ]]
    use("arcticicestudio/nord-vim")
    
    -- 下边状态栏
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    -- 已打开buffer横栏
    use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}

    -- 语法高亮
    use "nvim-treesitter/nvim-treesitter"

    -- lsp友好的进度条
    use({
        "j-hui/fidget.nvim",
        config = function()
            require("fidget").setup()
        end
    })

    -- 快速注释 
    use {
        'numToStr/Comment.nvim',
        config = function()
                require('Comment').setup()
            end
    }

    -- 自动补全
    use("hrsh7th/nvim-cmp")
    use({
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-nvim-lua",
        "hrsh7th/cmp-vsnip",
        "hrsh7th/cmp-path",
        "hrsh7th/cmp-buffer",
        "hrsh7th/vim-vsnip",
        after = { "hrsh7th/nvim-cmp" },
        requires = { "hrsh7th/nvim-cmp" },
    })

    
    use "hrsh7th/cmp-nvim-lsp-signature-help"

    use {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig"
    }

    -- Rust Analyzer 补充
    use("simrat39/rust-tools.nvim")
    --[[ use("nvim-lua/popup.nvim") ]]
    use("nvim-lua/plenary.nvim")

    --[[ use({
        "glepnir/lspsaga.nvim",
        branch = "main",
        config = function()
            require('lspsaga').setup({})
        end,
    }) ]]

    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }

    -- 漂浮弹窗
    use 'voldikss/vim-floaterm'

    if packer_bootstrap then
        require('packer').sync()
    end
end)
