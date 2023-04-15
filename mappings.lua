-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(function(bufnr) require("astronvim.utils.buffer").close(bufnr) end)
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
    ["<C-l>"] = {
      function()
        os.execute("clear")
      end,
      desc = "Native clear terminal function" 
    },
    [","] = { 
      "A,<esc>", 
      desc = "Insert comma on end of line." 
    },
    [";"] = { 
      "A;<esc>", 
      desc = "Insert semicolon on end of line." 
    },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
    ["<C-l>"] = false,
    ["<C-s>"] = { 
      "<cmd>2ToggleTerm direction=horizontal<cr>",
      desc = "Split active horizontal termina"
    }
  },
}
