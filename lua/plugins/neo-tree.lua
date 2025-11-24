return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons", -- optional, but recommended
    },
    lazy = false, -- neo-tree will lazily load itself

    config = function()
        require("neo-tree").setup({
            close_if_last_window = true,
        })

        vim.api.nvim_create_autocmd("VimEnter", {
          callback = function()
            if vim.fn.argc() == 0 then
              vim.cmd("Neotree")
            end
          end,
        })

        vim.keymap.set('n', '<C-n>', ':Neotree filesystem reveal left toggle=true<CR>', {})
    end
}
