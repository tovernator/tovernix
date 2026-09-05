{
  description = "base install";

  inputs = {

    nixpkgs = {
      url = "github:nixos/nixpkgs/nixos-26.05";
    };

    plover-flake.url = "github:openstenoproject/plover-flake";

    home-manager = {
      url = "github:nix-community/home-manager/release-26.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    noctalia = {
      url = "github:noctalia-dev/noctalia";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    niri = {
      url = "github:sodiboo/niri-flake";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    noctalia-greeter = {
      url = "github:noctalia-dev/noctalia-greeter";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    inputs@{
      self,
      nixpkgs,
      niri,
      noctalia,
      noctalia-greeter,
      plover-flake,
      home-manager,
      ...
    }:
    let
      system = "x86_64-linux";
      hostname = "toverpc";
      stateVersion = "26.05";
    in
    {
      nixosConfigurations = {

        base = nixpkgs.lib.nixosSystem {

          inherit system;

          specialArgs = {
            hostname = hostname;
            stateVersion = stateVersion;
          };

          modules = [
            ./system
            ./hardware/hardware-configuration.nix
            niri.nixosModules.niri
            noctalia-greeter.nixosModules.default

            home-manager.nixosModules.home-manager
            {

              home-manager.extraSpecialArgs = {
                inherit inputs;
                hostname = hostname;
                stateVersion = stateVersion;
              };
              home-manager.users.cutie = ./home/users/cutie.nix;

              home-manager.sharedModules = [
                noctalia.homeModules.default
              ];
            }
          ];
        };
      };

    };
}
