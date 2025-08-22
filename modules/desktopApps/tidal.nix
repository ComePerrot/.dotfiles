{
  pkgs,
  lib,
  imports,
  ...
}: {
  home.packages = with pkgs; [tidal-hifi];

  home.shellAliases = {
    tidal = "tidal-hifi";
  };
}
