{ config, pkgs, ... }:

{
  imports = [
    ./bash.nix
    ./scripts/gnr.nix
    ./programs/niri.nix
    ./programs/git.nix
    ./programs/alacritty.nix
    ./programs/waybar.nix
    ./programs/matugen.nix
  ];

  home.username = "ludvig";
  home.homeDirectory = "/home/ludvig";

  home.stateVersion = "26.05";

  programs.home-manager.enable = true;


}
