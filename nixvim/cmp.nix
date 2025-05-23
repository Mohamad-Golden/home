{
  programs.nixvim.plugins.cmp = {
    enable = true;
    autoEnableSources = true;
    settings = {
      snippet = {
        expand = ''
          function(args)
            require('luasnip').lsp_expand(args.body)
          end
        '';
      };

      completion = {
        completeopt = "menu,menuone,noinsert";
      };

      mapping = {
        __raw = ''
            cmp.mapping.preset.insert({
            ["<C-j>"] = cmp.mapping.select_next_item(),
            ["<C-k>"] = cmp.mapping.select_prev_item(),
            ["<C-Space>"] = cmp.mapping.complete(),
            ["<CR>"] = 
              cmp.mapping.confirm {
                            behavior = cmp.ConfirmBehavior.Replace,
                            select = true,
                          },
            ["<Tab>"] =
              cmp.mapping(function(fallback)
                            if cmp.visible() then
                              cmp.select_next_item()
                            elseif require("luasnip").expand_or_locally_jumpable() then
                              require("luasnip").expand_or_jump()
                            else
                              fallback()
                            end
                          end, { "i", "s" }),
            ["<S-Tab>"] = 
              cmp.mapping(function(fallback)
                            if cmp.visible() then
                              cmp.select_prev_item()
                            elseif require("luasnip").locally_jumpable(-1) then
                              require("luasnip").jump(-1)
                            else
                              fallback()
                            end
                          end, { "i", "s" }),
          })
        '';
      };

      sources = [
        { name = "nvim_lsp"; }
        { name = "luasnip"; }
        { name = "buffer"; }
        { name = "path"; }
        { name = "emoji"; }
        { name = "nvim_lua"; }
        { name = "npm"; }
        { name = "dotenv"; }
        { name = "snippets"; }
      ];

    };
  };
}
