local M = {
    "nvim-neorg/neorg",
    ft = "norg",
    dependencies = {
        "vhyrro/luarocks.nvim",
    },
    build = ":Neorg sync-parsers", -- and delete this line.
    cmd = "Neorg",
}

local modules = {
    ["core.defaults"] = {},
    ["core.completion"] = { config = { engine = "nvim-cmp", name = "[Norg]" } },
    ["core.integrations.nvim-cmp"] = {},
    ["core.concealer"] = { config = { icon_preset = "diamond" } },
    ["core.keybinds"] = {
        config = {
            default_keybinds = true,
            neorg_leader = "<Leader><Leader>",
        },
    },
    ["core.dirman"] = {
        config = {
            workspaces = {
                todos = "~/notes/todo",
            },
            open_last_workspace = true,
        }
    },
}

M.opts = {
    load = modules,
}

return M
