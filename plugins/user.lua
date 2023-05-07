return {
  {
    "kylechui/nvim-surround",
    version = "*",
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup({})
    end
  },
  {
    "mg979/vim-visual-multi",
    version = "*",
    event = "VeryLazy",
  },
  {
    "ruanyl/vim-sort-imports",
    version = "*",
    event = "VeryLazy",
  },
  {
    "mrjones2014/nvim-ts-rainbow",
    version = "*",
    event = "VeryLazy",
    config = function()
      require('nvim-treesitter.configs').setup({
        highlight = {
          -- ...
        },
        -- ...
        rainbow = {
          enable = true,
          -- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
          extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
          max_file_lines = nil, -- Do not enable for files with more than n lines, int
          -- colors = {}, -- table of hex strings
          -- termcolors = {} -- table of colour name strings
        },
      })
    end
  },
}
