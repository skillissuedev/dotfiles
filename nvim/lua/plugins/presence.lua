-- The setup config table shows all available config options with their default values:
require("presence").setup({
    -- General options
    auto_update         = true,             
    neovim_image_text   = "neovim by the way", -- Text displayed when hovered over the Neovim image
    main_image          = "neovim",                   -- Main image display (either "neovim" or "file")
    client_id           = "793271441293967371",
    log_level           = nil,
    debounce_timeout    = 10,
    enable_line_number  = false,                      -- Displays the current line number instead of the current project
    blacklist           = {},   
    buttons             = true,  
    file_assets         = {},     
    show_time           = true,                       -- Show the timer

    -- Rich Presence text options
    editing_text        = "editing %s",
    file_explorer_text  = "browsing %s",
    git_commit_text     = "committing changes",
    plugin_manager_text = "managing plugins",
    reading_text        = "reading %s",
    workspace_text      = "working on %s", 
    line_number_text    = "line %s out of %s",
})
