return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of imporing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  -- { import = "astrocommunity.colorscheme.catppuccin" },
  -- { import = "astrocommunity.completion.copilot-lua-cmp" },

  -- Language pack from community
  -- TODO: Split the community language packs to a seperated lua file
  -- { import = "astrocommunity.pack.python" },
  { import = "astrocommunity.pack.cpp" },
}
