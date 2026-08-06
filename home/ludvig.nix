{ config, pkgs, ... }:

{
  home.username = "ludvig";
  home.homeDirectory = "/home/ludvig";

  home.stateVersion = "26.05";

  programs.home-manager.enable = true;
}
