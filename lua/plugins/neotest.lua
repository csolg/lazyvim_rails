return {
  'olimorris/neotest-rspec',
  'nvim-neotest/neotest-plenary',
  'marilari88/neotest-vitest',
  {
    'nvim-neotest/neotest',
    opts = { adapters = { 'neotest-rspec', 'neotest-vitest', 'neotest-plenary' } },
  },
}
