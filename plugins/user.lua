return {
  {
    "kylechui/nvim-surround",
    version = "*",
    event = "VeryLazy",
    config = function()
        require("nvim-surround").setup({})
    end
  },
  { "mg979/vim-visual-multi",
    version = "*",
    event = "VeryLazy",
  },
  { "ruanyl/vim-sort-imports",
    version = "*",
    event = "VeryLazy",
  },
}
