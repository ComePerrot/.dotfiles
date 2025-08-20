{
  pkgs,
  lib,
  imports,
  ...
}: {
  imports = [
    ./desktopApps/element.nix
    ./desktopApps/zotero.nix
    ./shell/aliases.nix
    ./shell/zsh.nix
    ./terminal/starship.nix
    ./terminal/wezterm.nix
    ./utils/eza.nix
    ./utils/git.nix
  ];
}
