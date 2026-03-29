return {
  'nvim-lualine/lualine.nvim',
  config = function()
    local mode = {
      'mode',
      fmt = function(str)
        return ' ' .. str
        -- return ' ' .. str:sub(1, 1) -- displays only the first character of the mode
      end,
    }

    local filename = {
      'filename',
      file_status = true, -- displays file status (readonly status, modified status)
      path = 0, -- 0 = just filename, 1 = relative path, 2 = absolute path
    }

    local hide_in_width = function()
      return vim.fn.winwidth(0) > 100
    end

    local diagnostics = {
      'diagnostics',
      sources = { 'nvim_diagnostic' },
      sections = { 'error', 'warn' },
      symbols = { error = ' ', warn = ' ', info = ' ', hint = ' ' },
      colored = false,
      update_in_insert = false,
      always_visible = false,
      cond = hide_in_width,
    }

    local diff = {
      'diff',
      colored = false,
      symbols = { added = ' ', modified = ' ', removed = ' ' }, -- changes diff symbols
      cond = hide_in_width,
    }

    require('lualine').setup {
      options = {
        icons_enabled = true,
        theme = 'auto', -- Set theme based on environment variable
        -- theme = {
        --   normal = {
        --     a = { bg = '#61afef', fg = '#282c34', gui = 'bold' },
        --     b = { bg = '#282c34', fg = '#abb2bf' },
        --     c = { bg = '#1a1d23', fg = '#abb2bf' },
        --   },
        --   insert = {
        --     a = { bg = '#98c379', fg = '#282c34', gui = 'bold' },
        --     b = { bg = '#282c34', fg = '#abb2bf' },
        --     c = { bg = '#1a1d23', fg = '#abb2bf' },
        --   },
        --   visual = {
        --     a = { bg = '#c678dd', fg = '#282c34', gui = 'bold' },
        --     b = { bg = '#282c34', fg = '#abb2bf' },
        --     c = { bg = '#1a1d23', fg = '#abb2bf' },
        --   },
        --   replace = {
        --     a = { bg = '#e06c75', fg = '#282c34', gui = 'bold' },
        --     b = { bg = '#282c34', fg = '#abb2bf' },
        --     c = { bg = '#1a1d23', fg = '#abb2bf' },
        --   },
        --   command = {
        --     a = { bg = '#e5c07b', fg = '#282c34', gui = 'bold' },
        --     b = { bg = '#282c34', fg = '#abb2bf' },
        --     c = { bg = '#1a1d23', fg = '#abb2bf' },
        --   },
        --   inactive = {
        --     a = { bg = '#3e4452', fg = '#5c6370' },
        --     b = { bg = '#282c34', fg = '#5c6370' },
        --     c = { bg = '#1a1d23', fg = '#5c6370' },
        --   },
        -- },
        -- https://www.nerdfonts.com/cheat-sheet
        --         '' '' { left = '|', right = '|' },
        section_separators = { left = '', right = '' },
        component_separators = { left = '|', right = '|' },
        disabled_filetypes = { 'alpha', 'neo-tree' },
        always_divide_middle = true,
      },
      sections = {
        lualine_a = { mode },
        lualine_b = { 'branch' },
        lualine_c = { filename },
        lualine_x = { diagnostics, diff, { 'encoding', cond = hide_in_width }, { 'filetype', cond = hide_in_width } },
        lualine_y = { 'location' },
        lualine_z = { 'progress' },
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { { 'filename', path = 1 } },
        lualine_x = { { 'location', padding = 0 } },
        lualine_y = {},
        lualine_z = {},
      },
      tabline = {},
      extensions = { 'fugitive' },
    }
  end,
}
