return {
  "chrisgrieser/nvim-spider",
  lazy = true,
  dependecies = {
    "theHamsta/nvim_rocks",
    build = "pip3 install --user hererocks && python3 -mhererocks . -j2.1.0-beta3 -r3.0.0 && cp n",
    config = function()
      require("nvim_rocks").ensure_installed("luautf8")
    end,
  },
  keys = {
    { "w", "<cmd>lua require('spider').motion('w')<CR>", mode = { "n", "o", "x" } },
    { "e", "<cmd>lua require('spider').motion('e')<CR>", mode = { "n", "o", "x" } },
    { "b", "<cmd>lua require('spider').motion('b')<CR>", mode = { "n", "o", "x" } },
    { "<C-f>", "<Esc>l<cmd>lua require('spider').motion('w')<CR>i", mode = { "i" } },
    { "<C-b>", "<Esc><cmd>lua require('spider').motion('b')<CR>i", mode = { "i" } },
  },
}
