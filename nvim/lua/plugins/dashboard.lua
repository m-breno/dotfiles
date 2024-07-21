return {
    "nvimdev/dashboard-nvim",
    dependencies = { {'nvim-tree/nvim-web-devicons'}},
    event = 'VimEnter',
    config = function()
        require('dashboard').setup {
            theme = 'doom',
            config = {
                header = {
                    [[                                                                       ]],
                    [[                                                                       ]],
                    [[                                                                       ]],
                    [[                                                                     ]],
                    [[       ████ ██████           █████      ██                     ]],
                    [[      ███████████             █████                             ]],
                    [[      █████████ ███████████████████ ███   ███████████   ]],
                    [[     █████████  ███    █████████████ █████ ██████████████   ]],
                    [[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
                    [[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
                    [[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
                    [[                                                                       ]],
                    [[                                                                       ]],
                    [[                                                                       ]],
                }, --your header
                center = {
                    {
                        icon = ' ',
                        desc = 'Find File',
                        key = 'f',
                        keymap = 'SPC f f',
                        key_hl = 'Number',
                        key_format = '', -- remove default surrounding `[]`
                        action = 'lua print(2)'
                    },
                    {
                        icon = ' ',
                        desc = 'Find Dotfiles',
                        key = 'd',
                        keymap = 'SPC f d',
                        key_format = '', -- remove default surrounding `[]`
                        action = 'lua print(3)'
                    },
                },
                footer = {"Never gonna give you up!"}  --your footer
            }
        }
    end,
}
