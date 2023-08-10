local M = {}

function M.mappings(maps)
  local utils = require "astronvim.utils"
  local is_available = utils.is_available

  -- mappings seen under group name "Buffer"
  maps.n["<leaderbn>"] = { "<cmd>tabnew<cr>", desc = "New tab" }
  maps.n["<leader>bD"] = {
    function()
      require("astronvim.utils.status").heirline.buffer_picker(
        function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
      )
    end,
    desc = "Pick to close",
  }
  -- tables with the `name` key will be registered with which-key if it's installed
  -- this is useful for naming menus
  maps.n["<leader>b"] = { name = "Buffers" }

  -- buffers
  if is_available "bufferline.nvim" then
    maps.n["<S-h>"] = { "<cmd>BufferLineCyclePrev<cr>", desc = "Prev buffer" }
    maps.n["<S-l>"] = { "<cmd>BufferLineCycleNext<cr>", desc = "Next buffer" }
    maps.n["[b"] = { "<cmd>BufferLineCyclePrev<cr>", desc = "Prev buffer" }
    maps.n["]b"] = { "<cmd>BufferLineCycleNext<cr>", desc = "Next buffer" }
  else
    maps.n["<S-h>"] = { "<cmd>bprevious<cr>", desc = "Prev buffer" }
    maps.n["<S-l>"] = { "<cmd>bnext<cr>", desc = "Next buffer" }
    maps.n["[b"] = { "<cmd>bprevious<cr>", desc = "Prev buffer" }
    maps.n["]b"] = { "<<cmd>bnext<cr>", desc = "Next buffer" }
  end

  -- rigister a menus name for trouble
  maps.n["<leader>x"] = { name = "Trouble" }

  return maps
end

return M
