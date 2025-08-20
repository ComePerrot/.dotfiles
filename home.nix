{
  config,
  lib,
  pkgs,
  nixgl,
  ...
}: {
  # NixGL is necessary for some apps to run properly on non NixOS systems
  nixGL.packages = import nixgl {inherit pkgs;};
  nixGL.defaultWrapper = "mesa";
  nixGL.installScripts = ["mesa"];

  imports = [
    ./modules
  ];

  programs = {
    # Let Home Manager install and manage itself.
    home-manager.enable = true;
  };

  home = {
    stateVersion = "24.11";

    packages = with pkgs; [
      # Font
      cascadia-code

      # Nix utils
      nixd
      alejandra

      # Other utils
      ncdu
      tlrc
      wget
      uv
    ];
  };

  fonts = {
    fontconfig.enable = true;
  };
}
