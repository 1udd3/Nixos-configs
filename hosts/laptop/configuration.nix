{ pkgs, ... }:

{
  imports = [
    ./hardware-configuration.nix
  ];

  # Hostname & Hårdvaruspecifikt för desktopen
  networking.hostName = "laptop";

  # Systemets version (ändra inte denna)
  system.stateVersion = "26.05";
}
