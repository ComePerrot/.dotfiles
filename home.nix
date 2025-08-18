{
  pkgs,
  lib,
  inputs,
  ...
}:
{
  imports = [
    ./modules
  ];

  programs = {
    # Let Home Manager install and manage itself.
    home-manager.enable = true;
  };

  home = {
    stateVersion = "24.11";

    # username = lib.mkDefault "cperrot"; 
    # homeDirectory = lib.mkDefault "/home/cperrot";

    packages = with pkgs; [
      # Other utils
      eza
      ncdu
      tlrc
      wget
      wezterm
      git-lfs
      zotero
      uv

      nixd
      alejandra
    ]; 
  };

  fonts = {
    fontconfig.enable = true;
  };
}
