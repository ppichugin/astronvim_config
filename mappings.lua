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
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
    -- Personalized settings
    ["<C-PageDown>"] = { "<cmd>bnext<cr>", desc = "Next buffer" },
    ["<C-PageUp>"] = { "<cmd>bprevious<cr>", desc = "Previous buffer" },
    ["<leader>af"] = { "<cmd>Telescope current_buffer_fuzzy_find<cr>", desc = "Search Text in Current File" },
    -- ["<leader>ae"] = { "<cmd>set autochdir | !xdg-open .<cr>", desc = "Open File Manager in Current file" },
    -- ["<leader>ac"] = { "<cmd>set autochdir<cr>", desc = "Set Directory to Current File Directory" },
  },
  i = {
    -- some additions for Insert mode
    ["<C-s>"] = { "<cmd>w<cr>", desc = "Save inside Insert Mode" },
    ["<C-q>"] = { "<cmd>q<cr>", desc = "Quit inside Insert Mode" },
    ["<S-End>"] = { "<esc>V", desc = "Quit inside Insert Mode" },
    ["<C-PageDown>"] = { "<cmd>bnext<cr>", desc = "Next buffer" },
    ["<C-PageUp>"] = { "<cmd>bprevious<cr>", desc = "Previous buffer" },
    ["<C-z>"] = { "<cmd>u<cr>", desc = "undo" },
    ["<C-y>"] = { "<cmd>redo<cr>", desc = "Redo" },
    ["<C-x>"] = { "codeium#Accept()", script = true, silent = true, expr = true },
    ["<C-a>"] = { "<esc>ggVG<cr>", desc = "Select All" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
