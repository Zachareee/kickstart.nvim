local dap = require 'dap'

dap.configurations.python = { {
  type = 'python',
  request = 'launch',
  name = 'Launch file',
  program = '${file}',
} }

dap.adapters.python = function(cb, config)
  if config.request == 'attach' then
    ---@diagnostic disable-next-line: undefined-field
    local port = (config.connect or config).port
    ---@diagnostic disable-next-line: undefined-field
    local host = (config.connect or config).host or '127.0.0.1'
    cb {
      type = 'server',
      port = assert(port, '`connect.port` is required for a python `attach` configuration'),
      host = host,
      options = {
        source_filetype = 'python',
        detached = false,
      },
    }
  else
    cb {
      type = 'executable',
      command = 'python',
      args = { '-m', 'debugpy.adapter' },
      options = {
        source_filetype = 'python',
        detached = false,
      },
    }
  end
end

return {}
