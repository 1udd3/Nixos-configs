{ pkgs, ... }:

{
  # 1. Aktivera PipeWire (krävs för ljud och skärmdelning)
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    pulse.enable = true;
  };

  # 2. Konfigurera XDG Portals för Niri
  xdg.portal = {
    enable = true;
    extraPortals = [
      pkgs.xdg-desktop-portal-gnome
      pkgs.xdg-desktop-portal-gtk
    ];
    config = {
      niri = {
        default = [ "gnome" "gtk" ];
      };
    };
  };
}
