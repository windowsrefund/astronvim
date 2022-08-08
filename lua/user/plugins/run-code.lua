return function()
  require('run-code').setup {
    output = {
      buffer = false,
      split_cmd = '20split',
    }
  }
end
