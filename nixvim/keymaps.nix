{
  programs.nixvim.keymaps = [
    {
      mode = "n";
      key = "<Esc>";
      action = "<cmd>nohlsearch<CR>";
    }

    {
      mode = "n";
      key = "s";
      action = "<cmd>w<cr>";
    }

    {
      mode = "n";
      key = "q";
      action = "<cmd>bd<CR>";
      options = {
        desc = "Close Buffer";
      };
    }

    {
      mode = [
        "n"
        "v"
      ];
      key = "L";
      action = "$";
    }
    {
      mode = [
        "n"
        "v"
      ];
      key = "H";
      action = "^";
    }

    {
      mode = [
        "n"
        "v"
      ];
      key = "<A-j>";
      action = ":m .+1<cr>==";
    }
    {
      mode = [
        "n"
        "v"
      ];
      key = "<A-k>";
      action = ":m .-2<cr>==";
    }

    {
      mode = "n";
      key = "U";
      action = "<cmd>redo<cr>";
    }

    {
      mode = "n";
      key = "<C-d>";
      action = "<C-d>zz";
    }

    {
      mode = "n";
      key = "<C-u>";
      action = "<C-u>zz";
    }

    {
      mode = [
        "n"
        "v"
      ];
      key = "<Space>";
      action = "<Nop>";
      options = {
        silent = true;
      };
    }

    {
      mode = "n";
      key = "k";
      action = "v:count == 0 ? 'gk' : 'k'";
      options = {
        expr = true;
        silent = true;
      };
    }
    {
      mode = "n";
      key = "j";
      action = "v:count == 0 ? 'gj' : 'j'";
      options = {
        expr = true;
        silent = true;
      };
    }

    {
      mode = "n";
      key = "<C-h>";
      action = "<C-w><C-h>";
      options = {
        desc = "Move focus to the left window";
      };
    }
    {
      mode = "n";
      key = "<C-l>";
      action = "<C-w><C-l>";
      options = {
        desc = "Move focus to the right window";
      };
    }
    {
      mode = "n";
      key = "<C-j>";
      action = "<C-w><C-j>";
      options = {
        desc = "Move focus to the lower window";
      };
    }
    {
      mode = "n";
      key = "<C-k>";
      action = "<C-w><C-k>";
      options = {
        desc = "Move focus to the upper window";
      };
    }

    {
      key = "f";
      action.__raw = ''
        function()
          require('hop').hint_char1()
        end
      '';
      options.remap = true;
    }

    {
      mode = [
        "n"
        "i"
      ];
      key = "<C-n>";
      action = "<C-^>";
      options = {
        desc = "Switching to the previously edited buffer";
      };
    }

    {
      mode = "i";
      key = "jj";
      action = "<Esc>";
    }

    {
      key = "<C-m>";
      action = "<cmd>NvimTreeToggle<cr>";
    }

    {
      mode = "n";
      key = "[c";
      action.__raw = ''
        function()
          require("treesitter-context").go_to_context(vim.v.count1)
        end
      '';
      options = {
        silent = true;
      };
    }
  ];
}
