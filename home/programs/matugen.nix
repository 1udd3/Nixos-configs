{ pkgs, config, ... }:

{
  home.packages = [
    pkgs.matugen
  ];

  xdg.configFile."matugen/config.toml".text = ''
    [config]
    reload_apps = true

    [templates.waybar]
    input_path = "${../configs/matugen/waybar.css}"
    output_path = "${config.xdg.configHome}/waybar/colors.css"
    post_hook = "pkill -SIGUSR2 waybar"

    [templates.niri]
    input_path = "${../configs/matugen/niri.kdl}"
    output_path = "${config.xdg.configHome}/niri/colors.kdl"
    post_hook = "niri msg action load-config-file"

    [templates.fuzzel]
    input_path = "${../configs/matugen/fuzzel.ini}"
    output_path = "${config.xdg.configHome}/fuzzel/colors.ini"
  '';
}
