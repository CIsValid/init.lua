return {
    "samoshkin/vim-mergetool",
    config = function()
        vim.g.mergetool_layout = 'mr'
        vim.g.mergetool_prefer_revision = 'local'

        vim.keymap.set("n", "<leader>mt", ":MergetoolToggle<CR>")
    end
}
