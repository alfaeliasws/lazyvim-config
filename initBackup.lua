-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("nvim-treesitter.install").prefer_git = true
require("gruvbox").setup({
  terminal_colors = true, -- add neovim terminal colors
  undercurl = true,
  underline = true,
  bold = true,
  italic = {
    strings = true,
    emphasis = true,
    comments = true,
    operators = false,
    folds = true,
  },
  strikethrough = true,
  invert_selection = false,
  invert_signs = false,
  invert_tabline = false,
  invert_intend_guides = false,
  inverse = true, -- invert background for search, diffs, statuslines and errors
  contrast = "hard", -- can be "hard", "soft" or empty string
  palette_overrides = {
    bright_green = "#36e289",
    bright_blue = "#3ac0cf",
    bright_purple = "#c682d3",
    bright_yellow = "#e7ed31",
    yellow = "#e7ed31",
    bg0 = "#e7ed31",
  },
  overrides = {},
  dim_inactive = false,
  transparent_mode = true,
})
vim.cmd("colorscheme gruvbox")

function CreateNewFileInSameDirectory()
  vim.cmd(":e " .. vim.fn.expand("%:p:h") .. "/")
end

vim.api.nvim_set_keymap(
  "n",
  "<leader>nf",
  "<cmd>lua CreateNewFileInSameDirectory()<CR>",
  { noremap = true, silent = true }
)

vim.o.background = "dark"
