{
  pkgs,
  lib,
  imports,
  ...
}: {
  programs.tidal-hifi.enable = true;

  home.shellAliases = {
    tidal = "tidal-hifi";
  };
}
