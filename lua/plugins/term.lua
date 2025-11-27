-- local status, term = pcall(require, "toggleterm")
-- if not status then
--   return
-- end
return {
	"akinsho/toggleterm.nvim",
  opts = {
    direction = 'float',
    float_opts = {
      border = 'curved',
    },
  }
}
