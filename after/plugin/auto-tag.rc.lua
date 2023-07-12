local status, autotag = pcall(require, "nvim-ts-autotag")
local status2, treesitterConfig = pcall(require, "nvim-treesitter.configs")

if (not status) then return end
if(not status2) then return end

treesitterConfig.setup{
  autotag = {
    enable = true,
    enable_rename = true,
    
  }
}

autotag.setup({})
