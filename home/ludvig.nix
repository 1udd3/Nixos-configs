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
    ./programs/fuzzel.nix
    ./scripts/theme-switch.nix
    ./programs/btop.nix
    ./programs/fastfetch.nix
    ./scripts/rebuild.nix
    ./scripts/i.nix

  ];

  home.username = "ludvig";
  home.homeDirectory = "/home/ludvig";

  home.stateVersion = "26.05";

  programs.home-manager.enable = true;


    home.pointerCursor = {
	enable = true;
	gtk.enable = true;
	x11.enable = true;
	package = pkgs.apple-cursor;
	name = "macOS";
	size = 24; # Du kan ändra storlek här (t.ex. 24, 32, 48)
	};


}
