-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  keys = {
    { '\\\\', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
    { '\\b', ':Neotree reveal buffers<CR>', desc = 'NeoTree reveal buffers', silent = true },
    { '\\g', ':Neotree reveal git_status<CR>', desc = 'NeoTree reveal git_status', silent = true },
  },
  lazy = false,
  opts = {
    buffers = {
      window = {
        mappings = {
          ['\\'] = 'close_window',
        },
      },
    },
    filesystem = {
      filtered_items = {
        hide_hidden = true,
        visible = true,
        never_show = { '.git' },
      },
      window = {
        mappings = {
          ['\\'] = 'close_window',
          ['P'] = { 'toggle_preview', config = { use_float = false, use_image_nvim = true } },
        },
      },
      hijack_netrw_behavior = 'open_current',
    },
    git_status = {
      window = {
        mappings = {
          ['\\'] = 'close_window',
        },
      },
    },
  },
}
