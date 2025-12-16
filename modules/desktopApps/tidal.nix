{pkgs, ...}: {
  home.packages = with pkgs; [tidal-hifi];

  home.shellAliases = {
    tidal = "tidal-hifi";
  };
}
