{ config, pkgs, ... }:

{
  programs.fuzzel = {
    enable = true;
    settings = {
      main = {
        include = "${config.xdg.configHome}/fuzzel/colors.ini";
        font = "JetBrainsMono Nerd Font:size=12";
        prompt = "'❯ '";
        terminal = "${pkgs.alacritty}/bin/alacritty";
        icon-theme = "Papirus";
      };
      border = {
        width = 2;
        radius = 10;
      };
    };
  };
}
