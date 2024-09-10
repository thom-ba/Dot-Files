if vim.loader then
	vim.loader.enable()
end

_G.dd = function(...)
	require("util.debug").dump(...)
end
vim.print = _G.dd

vim.cmd([[
  hi Normal guibg=NONE ctermbg=NONE
  hi NonText guibg=NONE ctermbg=NONE
  hi EndOfBuffer guibg=NONE ctermbg=NONE
]])

require("config.lazy")
