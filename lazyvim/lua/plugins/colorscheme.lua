return {
  -- Add nord with vibrant colors
  {
    "shaunsingh/nord.nvim",
    opts = {
      contrast = true, -- Higher contrast for better distinction
      borders = true, -- Borders around windows
      italic = {
        comments = true,
        keywords = true,
        strings = false,
      },
      bold = true, -- Bold certain elements like keywords
      disable_background = false, -- Keep background color
      custom_colors = function(colors)
        colors.red = "#FF6B6B" -- Brighter red
        colors.orange = "#FFB86C" -- Brighter orange
        colors.green = "#50FA7B" -- Brighter green
        colors.blue = "#8BE9FD" -- Brighter blue
        colors.purple = "#BD93F9" -- Brighter purple
        colors.yellow = "#F1FA8C" -- Brighter yellow
      end,
    },
    config = function(_, opts)
      -- require("nord").setup(opts)
      -- require("nord").load()

      -- Additional custom highlights to enhance vibrancy
      vim.api.nvim_set_hl(0, "Function", { fg = "#88C0D0", bold = true }) -- Bright cyan for functions
      vim.api.nvim_set_hl(0, "Keyword", { fg = "#81A1C1", italic = true }) -- Blue for keywords
      vim.api.nvim_set_hl(0, "String", { fg = "#A3BE8C" }) -- Green for strings
      vim.api.nvim_set_hl(0, "Comment", { fg = "#616E88", italic = true }) -- Dimmed blue for comments
    end,
  },

  -- add onedark
  {
    "navarasu/onedark.nvim",
    opts = {
      style = "dark",
    },
    config = function(_, opts)
      require("onedark").setup(opts)
      require("onedark").load()
    end,
  },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "onedark",
    },
  },
}
