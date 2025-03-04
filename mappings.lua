local M = {}

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = { "<cmd> DapToggleBreakpoint <CR>" },
    ["<leader>dus"] = {
      function ()
        local widgets = require('dap.ui.widgets');
        local sidebar = widgets.sidebar(widgets.scopes);
        sidebar.open();
      end,
      "Open debugging sidebar"
    }
  }
}

M.crates = {
  plugin = true,
  n = {
    ["<leader>rcu"] = {
      function ()
        require('crates').upgrade_all_crates()
      end,
      "update crates"
    }
  }
}

M.general = {
  n = {
    ["<leader>ld"] = {
      function ()
        require('telescope.builtin').lsp_definitions()
        end,
      "[L]SP: Goto [D]efinition"
    },
    ["<leader>lD"] = {
      function ()
        vim.lsp.buf.declaration()
        end,
      "[L]SP: Goto [D]eclaration"
    }
  }
}

return M
