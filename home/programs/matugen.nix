{ pkgs, ... }:

{
  home.packages = [
    pkgs.matugen
  ];
	xdg.configFile."matugen/config.toml".text = ''
	  [config]
	  reload_apps = true

	  [templates.waybar]
	  input_path = "/etc/nixos/home/configs/matugen/waybar.css"
	  output_path = "/home/ludvig/.config/waybar/colors.css"
	  post_hook = "pkill -SIGUSR2 waybar"
'';
}
