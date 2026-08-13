{ pkgs, ... }:

{
  services.desktopManager.plasma6.enable = true;

  environment.plasma6.excludePackages = with pkgs.kdePackages; [
    dolphin
    gwenview
    kate
    khelpcenter
    okular
    elisa
    konsole
    qrca
    discover
    ark
    kwalletmanager
    spectacle
    kmenuedit
];

}

