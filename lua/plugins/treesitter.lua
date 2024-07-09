return {
  {
    "nvim-treesitter/nvim-treesitter",
     event = { "BufReadPre", "BufNewFile" },
     build = ":TSUpdate",
     dependencies = {
     "windwp/nvim-ts-autotag",
  },
    config = function()
      local config = require("nvim-treesitter.configs")
      config.setup({
        auto_install = true,
        highlight = { enable = true },
        indent = { enable = true },
        autotag = {enable = true,},
        ensure_installed = {
          "python",
          "bash",
          "lua",
          "vim",
          "dockerfile",
          "gitignore",
          "vimdoc",
        },
        incremental_selection = {
          enable = true,
          keymaps = {
            init_selection = "<C-space>",
            node_incremental = "<C-space>",
            scope_incremental = false,
            node_decremental = "<bs>",
        },
        },
      })
    end
  }
}
