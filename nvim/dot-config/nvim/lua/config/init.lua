require('config.set')
require('config.remap')
require('config.lazy_init')

vim.api.nvim_create_autocmd({ 'VimEnter', 'VimLeave' }, {
    callback = function()
        if vim.env.TMUX_PLUGIN_MANAGER_PATH then
            local pid = vim.fn.jobstart('~/.tmux/plugins/tmux-window-name/scripts/rename_session_windows.py &')
            vim.fn.jobwait({ pid })
        end
    end,
})
