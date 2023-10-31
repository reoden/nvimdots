vim.g.mapleader = " "

local mappings = {
  -- Escape insert mode or visual mode
  { from = "jk",           to = "<Esc>",                  mode = "i" },
  { from = "v",            to = "<Esc>",                  mode = "v" },
  { from = "J",            to = "5j",                     moed = { "n", "v" } },
  { from = "K",            to = "5k",                     moed = { "n", "v" } },
  { from = "j",            to = [[v:count ? 'j' : 'gj']], option = { noremap = true, expr = true } },
  { from = "k",            to = [[v:count ? 'k' : 'gk']], option = { noremap = true, expr = true } },

  --Select all
  { from = "<C-a>",        to = "ggVG" },

  --Move line
  { from = "<M-j>",        to = ":m+1<Cr>" },
  { from = "<M-k>",        to = ":m-2<Cr>" },
  { from = "<M-j>",        to = ":m '>+1<Cr>gv=gv",       mode = "v" },
  { from = "<M-k>",        to = ":m '<-2<Cr>gv=gv",       mode = "v" },

  -- Switch buffer
  { from = "H",            to = ":bprev<Cr>" },
  { from = "L",            to = ":bnext<Cr>" },

  -- Quit neovim
  { from = "<leader>q",    to = ":q<Cr>" },

  -- Clear highlight
  { from = "<leader>nh",   to = ":nohl<Cr>" },

  -- Close buffer
  { from = "<leader>c",    to = ":bd<Cr>" },

  -- Split windows
  { from = "<leader>sv",   to = "<C-w>v" },
  { from = "<leader>sh",   to = "<C-w>s" },

  --Move focus
  { from = "<C-h>",        to = "<C-w>h" },
  { from = "<C-j>",        to = "<C-w>j" },
  { from = "<C-k>",        to = "<C-w>k" },
  { from = "<C-l>",        to = "<C-w>l" },

  --Resize window
  { from = "<C-w><Left>",  to = "<C-w>>" },
  { from = "<C-w><Right>", to = "<C-w><" },
  { from = "<C-w><Up>",    to = "<C-w>+" },
  { from = "<C-w><Down>",  to = "<C-w>-" },

  -- Do not yank with x
  { from = "x",            to = '"_x"' },

  -- Increment/ decrement
  { from = "+",            to = "<C-a>" },
  { from = "-",            to = "<C-x>" },

  -- Lazy
  { from = "<Leader>l",    to = ":Lazy<Cr>" },
}

local option = {
  noremap = true,
  silent = true
}

for _, mapping in ipairs(mappings) do
  vim.keymap.set(mapping.mode or "n", mapping.from, mapping.to, mapping.option or option)
end
