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

      # usernames = ["cperrot" "cj"];

      perSystem = {
        system,
        lib,
        ...
      }: let
        name = "cperrot";
        pkgs = import inputs.nixpkgs {
          inherit system;
          config = {
            allowUnfree = true;
          };
        };
      in {
        legacyPackages.homeConfigurations = {
            ${name} = inputs.home-manager.lib.homeManagerConfiguration {
              inherit pkgs;
              extraSpecialArgs = {inherit inputs;};
              modules =
                [
                  ./home.nix
                ]
                ++ [
                  {
                    home = {
                      username = lib.mkDefault name;
                      homeDirectory = lib.mkDefault "/home/${name}" ;
                    };
                  }
                ];
            };
        };
      };
    };
}
