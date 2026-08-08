{ config, pkgs, ... }:

{
  imports = [
    ./bash.nix
    ./scripts/gnr.nix
  ];

  home.username = "ludvig";
  home.homeDirectory = "/home/ludvig";

  home.stateVersion = "26.05";

  programs.home-manager.enable = true;

  programs.git = {
    enable = true;

    settings = {
      user = {
        name = "1udd3";
        email = "ludvig@andrae.se";
      };

      init.defaultBranch = "main";
    };
  };
}
