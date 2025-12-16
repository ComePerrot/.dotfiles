{
  pkgs,
  nixgl,
  ...
}: {
  # NixGL is necessary for some apps to run properly on non NixOS systems
  targets.genericLinux.nixGL.packages = import nixgl {inherit pkgs;};
  targets.genericLinux.nixGL.defaultWrapper = "mesa";
  targets.genericLinux.nixGL.installScripts = ["mesa"];

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

    sessionPath = [
      "$HOME/.local/bin"
    ];
  };

  fonts = {
    fontconfig.enable = true;
  };
}
