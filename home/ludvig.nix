{ config, pkgs, ... }:

{
  home.username = "ludvig";
  home.homeDirectory = "/home/ludvig";

  home.stateVersion = "26.05";

  programs.home-manager.enable = true;

  programs.git = {
    enable = true;

    userName = "1udd3";
    userEmail = "ludvig@andrae.se";

    extraConfig = {
      init.defaultBranch = "main";
    };
  };
}
