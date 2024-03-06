return {
    {
        "ThePrimeagen/refactoring.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-treesitter/nvim-treesitter",
        },
        config = function()
            require('refactoring').setup({
                prompt_func_return_type = {
                    go = false,
                    java = false,
                    cpp = false,
                    c = false,
                    h = false,
                    hpp = false,
                    cxx = false,
                },
                prompt_func_param_type = {
                    go = false,
                    java = false,
                    cpp = false,
                    c = false,
                    h = false,
                    hpp = false,
                    cxx = false,
                },
                printf_statements = {},
                print_var_statements = {},
            })

            -- Key mappings
            vim.keymap.set("x", "<leader>re", ":Refactor extract<CR>")
            vim.keymap.set("x", "<leader>rf", ":Refactor extract_to_file<CR>")
            vim.keymap.set("x", "<leader>rv", ":Refactor extract_var<CR>")
            vim.keymap.set({ "n", "x" }, "<leader>ri", ":Refactor inline_var<CR>")
            vim.keymap.set("n", "<leader>rI", ":Refactor inline_func<CR>")
            vim.keymap.set("n", "<leader>rb", ":Refactor extract_block<CR>")
            vim.keymap.set("n", "<leader>rbf", ":Refactor extract_block_to_file<CR>")
        end,
    },

    {
        "Badhi/nvim-treesitter-cpp-tools",
        dependencies = { "nvim-treesitter/nvim-treesitter" },
        opts = function()
            require('nt-cpp-tools').setup({
                preview = {
                    quit = 'q',
                    accept = '<tab>',
                },
                header_extension = 'h',
                source_extension = 'cpp',
                custom_define_class_function_commands = {
                    TSCppImplWrite = {
                        output_handle = require 'nt-cpp-tools.output_handlers'.get_add_to_cpp()
                    }
                }
            })

            -- Key mappings
            vim.keymap.set("v", "<leader>rdf", ":TSCppDefineClassFunc<CR>")
            vim.keymap.set("v", "<leader>rmc", ":TSCppMakeConcreteClass<CR>")
            vim.keymap.set("v", "<leader>rro", ":TSCppRuleOf3<CR>")
            vim.keymap.set("v", "<leader>rroo", ":TSCppRuleOf5<CR>")
        end,
    },
}
