{
  pkgs,
  lib,
  imports,
  ...
}: {
  imports = [
    ./browsers/firefox.nix
    ./desktopApps/element.nix
    ./desktopApps/tidal.nix
    ./desktopApps/zotero.nix
    ./shell/aliases.nix
    ./shell/zsh.nix
    ./terminal/starship.nix
    ./terminal/wezterm.nix
    ./utils/eza.nix
    ./utils/git.nix
  ];
}
