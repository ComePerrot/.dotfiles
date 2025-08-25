{
  description = "A simple flake for home-manager";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nixgl.url = "github:nix-community/nixGL";
    flake-parts.url = "github:hercules-ci/flake-parts";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nur = {
      url = "github:nix-community/NUR";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nix-vscode-extensions.url = "github:nix-community/nix-vscode-extensions";
  };

  outputs = inputs @ {
    flake-parts,
    nixgl,
    nix-vscode-extensions,
    ...
  }:
    flake-parts.lib.mkFlake {inherit inputs;} {
      systems = ["x86_64-linux"];

      perSystem = {
        system,
        inputs',
        lib,
        ...
      }: let
        names = ["cperrot" "cj"];
        pkgs = import inputs.nixpkgs {
          inherit system;
          config.allowUnfree = true;
          overlays = [ nix-vscode-extensions.overlays.default ];
        };
      in {
        packages = {
          inherit (inputs'.home-manager.packages) home-manager; # Required for first run of home-manager
        };

        legacyPackages.homeConfigurations = lib.genAttrs names (
          name:
            inputs.home-manager.lib.homeManagerConfiguration {
              inherit pkgs;
              extraSpecialArgs = {
                inherit inputs;
                inherit nixgl;
              };
              modules =
                [
                  {
                    home = {
                      username = lib.mkDefault name;
                      homeDirectory = lib.mkDefault "/home/${name}";
                    };
                  }
                  inputs.nur.modules.homeManager.default
                ]
                ++ [./home.nix];
            }
        );
      };
    };
}
