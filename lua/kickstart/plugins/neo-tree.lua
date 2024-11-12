-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
    '3rd/image.nvim',
  },
  cmd = 'Neotree',
  keys = {
    { '\\\\', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
    { '\\b', ':Neotree reveal buffers<CR>', desc = 'NeoTree buffers', silent = true },
    { '\\g', ':Neotree reveal git_status<CR>', desc = 'NeoTree git_status', silent = true },
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
