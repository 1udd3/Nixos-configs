{ config, pkgs, ... }:

{
  programs.fastfetch = {
    enable = true;
    settings = {
      "$schema" = "https://github.com/fastfetch-cli/fastfetch/raw/master/doc/json_schema.json";
      
      logo = {
        source = "nixos_small";
      };
      
      modules = [
        "uptime"
        "packages"
        "shell"
        "wm"
        "theme"
        "terminal"
        "memory"
        "battery"
        "break"
        "colors"
      ];
    };
  };
}
