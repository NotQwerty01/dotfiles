return {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",
    dependencies = {
        "windwp/nvim-ts-autotag",
    },
    config = function()
        require("nvim-treesitter.config").setup({
            ensure_installed = {
                "lua",
                "cpp",
                "python",
                "typescript",
		"javascript",
		"html",
		"css",
		"json",
                "c",
            },
            auto_install = true,
            highlight = { enable = true },
            indent = { enable = true },
            autotag = { enable = true },
        })
    end,
}


