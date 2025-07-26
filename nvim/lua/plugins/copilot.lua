return {
  {
    'CopilotC-Nvim/CopilotChat.nvim',
    dependencies = {
      { 'github/copilot.vim' }, -- or zbirenbaum/copilot.lua
      { 'nvim-lua/plenary.nvim', branch = 'master' }, -- for curl, log and async functions
    },
    build = 'make tiktoken', -- Only on MacOS or Linux
    opts = {
      -- See Configuration section for options
    },
    -- See Commands section for default commands if you want to lazy load on them
    -- keys = {
    -- { '<leader>cc', '<cmd>CopilotChatToggle<CR>', desc = 'Toggle Copilot Chat' },
    -- { '<leader>ce', '<cmd>CopilotChatExplain<CR>',  desc = 'Explain Selection' },
    -- { '<leader>cf', '<cmd>CopilotChatFix<CR>',      desc = 'Fix Selection' },
    -- { '<leader>co', '<cmd>CopilotChatOptimize<CR>', desc = 'Optimize Selection' },
    -- { '<leader>cr', '<cmd>CopilotChatReview<CR>',   desc = 'Review Selection' },
    -- { '<leader>cm', '<cmd>CopilotChatModel<CR>',    desc = 'Change Copilot Model' },
    -- },
  },
}
