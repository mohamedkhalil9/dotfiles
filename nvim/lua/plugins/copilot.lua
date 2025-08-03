return {
  {
    'CopilotC-Nvim/CopilotChat.nvim',
    dependencies = {
      { 'github/copilot.vim' },                       -- or zbirenbaum/copilot.lua
      { 'nvim-lua/plenary.nvim', branch = 'master' }, -- for curl, log and async functions
    },
    build = 'make tiktoken',                          -- Only on MacOS or Linux
    opts = {
      -- See Configuration section for options
    },
    -- See Commands section for default commands if you want to lazy load on them
    -- config = function()
    -- vim.keymap.set('n', '<leader>cc', ':CopilotChat<CR>', { desc = 'Open Copilot Chat' }),
    -- vim.keymap.set('n', '<leader>co', ':CopilotChatOpen<CR>', { desc = 'Open Chat Window' }),
    -- vim.keymap.set('n', '<leader>cq', ':CopilotChatClose<CR>', { desc = 'Close Chat Window' }),
    vim.keymap.set('n', '<leader>cc', ':CopilotChatToggle<CR>', { desc = 'Toggle Chat Window' }),
    -- vim.keymap.set('n', '<leader>cs', ':CopilotChatStop<CR>', { desc = 'Stop Chat Output' }),
    -- vim.keymap.set('n', '<leader>cr', ':CopilotChatReset<CR>', { desc = 'Reset Chat Window' }),
    vim.keymap.set('n', '<leader>cs', function()
      local name = vim.fn.input 'Save chat as: '
      if name ~= '' then
        vim.cmd('CopilotChatSave ' .. name)
      end
    end, { desc = 'Save Chat History' }),
    vim.keymap.set('n', '<leader>cl', function()
      local name = vim.fn.input 'Load chat: '
      if name ~= '' then
        vim.cmd('CopilotChatLoad ' .. name)
      end
    end, { desc = 'Load Chat History' }),
    vim.keymap.set('n', '<leader>cp', ':CopilotChatPrompts<CR>', { desc = 'View Prompt Templates' }),
    vim.keymap.set('n', '<leader>cm', ':CopilotChatModels<CR>', { desc = 'View Available Models' }),
    vim.keymap.set('n', '<leader>ce', ':CopilotChatExplain<CR>', { desc = 'Explain Code' }),
    vim.keymap.set('n', '<leader>cr', ':CopilotChatReview<CR>', { desc = 'Review Code' }),
    vim.keymap.set('n', '<leader>cf', ':CopilotChatFix<CR>', { desc = 'Fix Code' }),
    vim.keymap.set('n', '<leader>co', ':CopilotChatOptimize<CR>', { desc = 'Optimize Code' }),
    vim.keymap.set('n', '<leader>cd', ':CopilotChatDocs<CR>', { desc = 'Add Documentation' }),
    vim.keymap.set('n', '<leader>ct', ':CopilotChatTests<CR>', { desc = 'Generate Tests' }),
    -- vim.keymap.set('n', '<leader>ccm', ':CopilotChatCommit<CR>', { desc = 'Write Commit Message' }),
    -- end,
  },
}
