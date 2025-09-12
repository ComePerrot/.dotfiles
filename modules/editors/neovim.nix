{inputs, ...}:
{
  imports = [ 
    inputs.nvf.homeManagerModules.default
  ];

  home.shellAliases.view = "nvim -R";

  programs.nvf = {
    enable = true;
  };
}
