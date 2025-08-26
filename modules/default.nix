{
  pkgs,
  lib,
  imports,
  ...
}: {
  imports = [
    ./browsers/firefox.nix
    ./desktopApps/element.nix
    ./desktopApps/keepassxc.nix
    ./desktopApps/tidal.nix
    ./desktopApps/vesktop.nix
    ./desktopApps/vlc.nix
    ./desktopApps/zotero.nix
    ./editors/neovim.nix
    ./editors/vscode.nix
    ./shell/aliases.nix
    ./shell/zsh.nix
    ./terminal/starship.nix
    ./terminal/wezterm.nix
    ./utils/eza.nix
    ./utils/git.nix
  ];
}
