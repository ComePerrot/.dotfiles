{
  pkgs,
  config,
  ...
}: {
  home.packages = with pkgs; [(config.lib.nixGL.wrap wezterm)];
  xdg.configFile."wezterm/".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/.dotfiles/config/wezterm/";

  # stylix.targets.wezterm.enable = false;
}
