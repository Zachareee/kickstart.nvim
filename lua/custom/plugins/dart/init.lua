local dap = require 'dap'

dap.configurations.dart = { {
  type = 'dart',
  request = 'launch',
  name = 'Launch Dart',
  program = '${file}',
} }

dap.adapters.dart = {
  type = 'executable',
  command = 'dart',
  args = { 'debug_adapter' },
  options = {
    detached = false,
  },
}

return {}
