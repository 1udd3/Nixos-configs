{ config, ... }:

{
  programs.btop = {
    enable = true;
    settings = {
      color_theme = "matugen";
      theme_background = false; # Gör btop transparent om din terminal är det
    };
  };
}
