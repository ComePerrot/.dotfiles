{
  description = "A simple flake for home-manager";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    flake-parts.url = "github:hercules-ci/flake-parts";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = inputs @ {flake-parts, ...}:
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
          config = {
            allowUnfree = true;
          };
        };
      in {
        packages = {
          inherit (inputs'.home-manager.packages) home-manager; # Required for first run of home-manager
	      };

        legacyPackages.homeConfigurations = lib.genAttrs names (
            name: inputs.home-manager.lib.homeManagerConfiguration {
              inherit pkgs;
              extraSpecialArgs = {inherit inputs;};
              modules = 
                 [
                  {
                    home = {
                      username = lib.mkDefault name;
                      homeDirectory = lib.mkDefault "/home/${name}" ;
                    };
                  }
                ] ++ [./home.nix];
            }
        );
      };
    };
}
