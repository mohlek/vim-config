return {
  'anuvyklack/windows.nvim',
  dependencies = {
    'anuvyklack/middleclass',
  },
  config = function()
    require('windows').setup()

    require('which-key').add {
      {
        mode = { 'n' },
        nowait = true,
        remap = false,
        { '<C-w>z', '<cmd>WindowsMaximize<cr>', desc = 'Maximize current window' },
      },
    }
  end,
}
