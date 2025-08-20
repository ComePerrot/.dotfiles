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
    ./shell/zsh.nix
    ./terminal/starship.nix
    ./terminal/wezterm.nix
    ./utils/eza.nix
    ./utils/git.nix
    
  ];
}