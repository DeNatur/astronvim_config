-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
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
    ["|"] = false,
    ["\\"] = false,
    ["<leader>-"] = { "<cmd>split<cr>", desc = "Horizontal Split" },
    ["<leader>\\"] = { "<cmd>vsplit<cr>", desc = "Vertical Split" },
    ["<leader>fl"] = {
      function()
        require('telescope').extensions.flutter.commands()
      end,
      desc = "Show flutter tools using telescope" }
  },
  t = {
    -- setting a mapping to false will disable it
    ["<C-space>"] = { "<C-\\><C-n><C-w>k" },
    ["<C-t>"] = { "<C-\\><C-n>" },
    -- ["<esc>"] = false,
  },
}
