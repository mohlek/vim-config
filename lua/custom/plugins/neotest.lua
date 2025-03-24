return {
  'nvim-neotest/neotest',
  dependencies = {
    'marilari88/neotest-vitest',
    'nvim-neotest/nvim-nio',
    'nvim-treesitter/nvim-treesitter',
  },
  cmds = {
    'Neotest run',
  },
  keys = {
    { '<leader>tr', '<cmd>Neotest run <cr>', desc = 'run nearest test' },
    { '<leader>tl', '<cmd>Neotest run last<cr>', desc = 'run last test' },
    { '<leader>tf', '<cmd>Neotest run file<cr>', desc = 'run test file' },
  },
  config = function()
    require('neotest').setup {
      adapters = {
        require 'neotest-vitest' {
          -- Filter directories when searching for test files. Useful in large projects (see Filter directories notes).
          filter_dir = function(name, rel_path, root)
            return name ~= 'node_modules'
          end,
        },
      },
    }
  end,
}
