{
  pkgs,
  lib,
  imports,
  ...
}:
{
  imports = [
    ./desktopApps/element.nix
    ./shell/aliases.nix
    ./terminal/starship.nix
    ./terminal/wezterm.nix
    ./utils/git.nix
    
  ];
}