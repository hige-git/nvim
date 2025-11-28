local kernel = vim.loop.os_uname.sysname()
local go_cmd

if kernel == "Darwin" then
  go_cmd = { "/opt/homebrew/bin/gopls" }
else
  go_cmd = { os.getenv("HOME") .. "/go/bin/gopls" }
end

return {
  cmd = go_cmd
}
