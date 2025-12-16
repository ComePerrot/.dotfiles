{pkgs, ...}: {
  home.packages = with pkgs; [filen-desktop];

  home.shellAliases = {
    filen = "filen-desktop";
  };
}
