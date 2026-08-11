{
  description = "NixOS Multi-host Flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager, ... }@inputs: {
    nixosConfigurations = {

      "desktop" = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./hosts/desktop/configuration.nix

          ./modules/audio.nix
          ./modules/fonts.nix
          ./modules/niri.nix
          ./modules/packages.nix
          ./modules/users.nix
	  ./modules/common.nix

	  ./modules/gaming.nix
	  ./modules/port.nix

          home-manager.nixosModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.users.ludvig = import ./home/ludvig.nix;
          }
        ];
      };

      "laptop" = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./hosts/laptop/configuration.nix

          ./modules/audio.nix
          ./modules/fonts.nix
          ./modules/niri.nix
          ./modules/packages.nix
          ./modules/users.nix
	  ./modules/common.nix

          home-manager.nixosModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.users.ludvig = import ./home/ludvig.nix;
          }
        ];
      };

    };
  };
}
