{ config, pkgs, lib, ... }:

{
  services.displayManager.sddm.enable = true;

  services.displayManager.defaultSession =  pkgs.lib.mkForce "niri";

}
