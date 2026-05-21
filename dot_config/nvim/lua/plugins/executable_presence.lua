return {
  {
    "andweeb/presence.nvim",
    event = "VeryLazy",
    opts = {
      -- Only show editing/reading status, no filenames or repo info
      editing_text        = "Editing...",
      file_explorer_text  = "Browsing...",
      git_commit_text     = "Committing...",
      plugin_manager_text = "Managing plugins...",
      reading_text        = "Reading...",
      workspace_text      = "",
      line_number_text    = "",
      -- Hide identifying details
      show_time           = false,
      enable_line_number  = false,
      -- Suppress file name and repo from details/state
      main_image          = "neovim",
      neovim_image_text   = "Neovim",
    },
  },
}
