{inputs, ...}:
{
  imports = [ 
    inputs.nvf.homeManagerModules.default
  ];

  home.shellAliases.view = "nvim -R";

  programs.nvf = {
    enable = true;

    settings.vim = {
      viAlias = true;
      vimAlias = true;

      spellcheck = {
        enable = false;
        languages = ["en" "fr"];
      };

      lsp.enable = true;
      languages = {
        enableTreesitter = true;

        nix = {
          enable = true;
          format.enable = true;
          format.type = "alejandra";

          lsp.server = "nixd";
        };
        python.enable = true;
      };
    };
  };
}
