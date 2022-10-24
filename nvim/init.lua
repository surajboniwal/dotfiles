require('surajboniwal.plugins')
require('surajboniwal.settings')
require('surajboniwal.colors')
require('surajboniwal.setup')
require('surajboniwal.autocmd')
require('surajboniwal.keybinds')

function _G.dump(...)
    local objects = vim.tbl_map(vim.inspect, { ... })
    print(unpack(objects))
end
