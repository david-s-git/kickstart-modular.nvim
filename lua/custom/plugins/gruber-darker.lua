return {
  { -- You can easily change to a different colorscheme.
    -- Change the name of the colorscheme plugin below, and then
    -- change the command in the config to whatever the name of that colorscheme is.
    --
    -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
    'blazkowolf/gruber-darker.nvim',
    dependencies = {
      'xiyaowong/transparent.nvim',
      config = {
        exclude_groups = { 'CursorLine', 'CursorLineNr', 'StatusLine', 'StatusLineNC' },
      },
    },
    priority = 1000, -- Make sure to load this before all the other start plugins.
    config = function()
      ---@diagnostic disable-next-line: missing-fields
      require('gruber-darker').setup {}
      vim.g.transparent_enabled = true

      -- Load the colorscheme here.
      -- Like many other themes, this one has different styles, and you could load
      -- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
      vim.cmd.colorscheme 'gruber-darker'
    end,
  },
}
-- vim: ts=2 sts=2 sw=2 et
