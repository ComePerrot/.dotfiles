{inputs, ...}:
{
  imports = [ 
    inputs.nixvim.homeModules.nixvim
  ];

  home.shellAliases.view = "nvim -R";

  programs.nixvim = {
    enable = true;
  };
}
