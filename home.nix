{
  config,
  lib,
  pkgs,
  nixgl,
  ...
}:
{
  nixGL.packages = import nixgl { inherit pkgs; };
  nixGL.defaultWrapper = "mesa";
  nixGL.installScripts = [ "mesa" ];

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
      # Font
      cascadia-code
      
      # Other utils
      eza
      ncdu
      tlrc
      wget
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
