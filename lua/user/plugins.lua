local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
    PACKER_BOOTSTRAP = fn.system {
        "git",
        "clone",
        "--depth",
        "1",
        "https://github.com/wbthomason/packer.nvim",
        install_path,
    }
    print "Installing packer close and reopen Neovim..."
    vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
    return
end

-- Have packer use a popup window
packer.init {
    display = {
        open_fn = function()
            return require("packer.util").float { border = "rounded" }
        end,
    },
}

-- Install your plugins here
return packer.startup(function(use)
    -- My plugins here
    use "wbthomason/packer.nvim" -- Have packer manage itself
    use "nvim-lua/popup.nvim" -- An implementation of the Popup API from vim in Neovim
    use "nvim-lua/plenary.nvim" -- Useful lua functions used by lots of plugins
    use "folke/tokyonight.nvim" -- Colorscheme
    use "hrsh7th/nvim-cmp" -- The completion plugin
    use "hrsh7th/cmp-buffer" -- buffer completions
    use "hrsh7th/cmp-path" -- path completions
    use "hrsh7th/cmp-cmdline" -- cmdline completions
    use "hrsh7th/cmp-nvim-lsp" -- lsp completions
    use "saadparwaiz1/cmp_luasnip" -- snippet completions
    use "L3MON4D3/LuaSnip" --snippet engine
    use "rafamadriz/friendly-snippets" -- a bunch of snippets to use
    use "neovim/nvim-lspconfig" -- enable LSP
    use "williamboman/nvim-lsp-installer" -- simple to use language server installer
    use "nvim-telescope/telescope.nvim" -- telescope
    use "nvim-treesitter/nvim-treesitter" -- treesitter
    use "windwp/nvim-autopairs" -- Autopairs, integrates with both cmp and treesitter
    use "numToStr/Comment.nvim" -- Easily comment stuff
    use "JoosepAlviste/nvim-ts-context-commentstring" -- context based commentstring
    use "lewis6991/gitsigns.nvim" -- git integration
    use 'kyazdani42/nvim-web-devicons' -- dev icons
    use 'kyazdani42/nvim-tree.lua' -- neovim tree
    use "akinsho/bufferline.nvim" -- bufferline
    use "moll/vim-bbye" -- to close buffer
    use "jose-elias-alvarez/null-ls.nvim" -- for formatters and linters
    use "nvim-lualine/lualine.nvim" -- lualine status bar
    use "akinsho/toggleterm.nvim" -- toggleterm
    use "lewis6991/impatient.nvim" -- decrease loading time
    use "goolord/alpha-nvim" -- dashboard

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if PACKER_BOOTSTRAP then
        require("packer").sync()
    end
end)
