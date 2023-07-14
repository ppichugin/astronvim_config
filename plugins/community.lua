return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of imporing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  { import = "astrocommunity.colorscheme.catppuccin" },
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.bash" },
  { import = "astrocommunity.pack.markdown" },
  { import = "astrocommunity.pack.yaml" },
  { import = "astrocommunity.pack.rust" },
  -- { import = "astrocommunity.pack.haskell" },
  { import = "astrocommunity.pack.go" },
  { import = "astrocommunity.completion.copilot-lua" },
  { -- further customize the options set by the community
    "copilot.lua",
    opts = {
      suggestion = {
        keymap = {
          accept = "<C-l>",
          accept_word = false,
          accept_line = false,
          next = "<C-.>",
          prev = "<C-,>",
          dismiss = "<C/>",
        },
      },
    },
  },
  {
    "m4xshen/smartcolumn.nvim",
    opts = {
      colorcolumn = 120,
      disabled_filetypes = { "help" },
    },
  },

  { import = "astrocommunity.bars-and-lines.smartcolumn-nvim" },
  { import = "astrocommunity.indent.indent-blankline-nvim", enabled = true },
  { import = "astrocommunity.indent.mini-indentscope", enabled = true },
  { import = "astrocommunity.project.nvim-spectre", enabled = true },
  { import = "astrocommunity.diagnostics.trouble-nvim", enabled = true },
  { import = "astrocommunity.editing-support.dial-nvim", enabled = true },
  { import = "astrocommunity.editing-support.text-case-nvim", enabled = true },
  { import = "astrocommunity.terminal-integration.flatten-nvim", enabled = true },
  { import = "astrocommunity.syntax.hlargs-nvim", enabled = true },
  { import = "astrocommunity.lsp.inc-rename-nvim", enabled = true },
  { import = "astrocommunity.motion.mini-move", enabled = true },
  { import = "astrocommunity.motion.mini-surround", enabled = true },
  { import = "astrocommunity.motion.mini-bracketed", enabled = true },
  { import = "astrocommunity.scrolling.mini-animate" },
  { import = "astrocommunity.editing-support.refactoring-nvim", enabled = false },
  { import = "astrocommunity.editing-support.zen-mode-nvim", enabled = false },
  { import = "astrocommunity.editing-support.neogen", enabled = false },
  { import = "astrocommunity.git.neogit", enabled = false },
  { import = "astrocommunity.bars-and-lines.scope-nvim", enabled = false },
  { import = "astrocommunity.code-runner.overseer-nvim", enabled = false },
}
