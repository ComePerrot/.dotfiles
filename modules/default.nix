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
    ./utils/git.nix
    
  ];
}