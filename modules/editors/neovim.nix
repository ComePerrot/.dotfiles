{inputs, ...}: {
  imports = [
    inputs.nvf.homeManagerModules.default
  ];

  home.shellAliases.view = "nvim -R";

  programs.nvf = {
    enable = true;

    settings.vim = {
      viAlias = true;
      vimAlias = true;

      options ={
        tabstop = 2;
        shiftwidth = 0; # Use tabstop value
      };

      spellcheck = {
        enable = false;
        languages = ["en" "fr"];
      };

      lsp = {
        enable = true;

        formatOnSave = false;
        lspkind.enable = false;
        lightbulb.enable = false;
        trouble.enable = false;
        nvim-docs-view.enable = true;
      };

      languages = {
        enableFormat = true;
        enableTreesitter = true;
        enableExtraDiagnostics = true;

        nix = {
          enable = true;
          format.type = "alejandra";
          lsp.server = "nixd";
        };
        markdown.enable = true;
        python.enable = true;
        typst.enable = true;
      };

      visuals = {
        nvim-scrollbar.enable = true;
        nvim-web-devicons.enable = true;
        cinnamon-nvim.enable = false;

        highlight-undo.enable = true;
        indent-blankline.enable = true;
      };

      statusline = {
        lualine = {
          enable = true;
        };
      };

      autopairs.nvim-autopairs.enable = true;

      autocomplete.nvim-cmp.enable = true;

      filetree = {
        neo-tree = {
          enable = true;
        };
      };

      binds = {
        whichKey.enable = true;
        cheatsheet.enable = true;
      };

      utility.motion = {
        precognition.enable = true;
      };

      telescope.enable = true;
      git = {
        enable = true;
        gitsigns.enable = true;
        gitsigns.codeActions.enable = false; # throws an annoying debug message
        neogit.enable = true;
      };

      ui.noice.enable = true;
      comments = {
        comment-nvim.enable = true;
      };
    };
  };
}
