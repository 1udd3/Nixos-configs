{ config, ... }:

{
  programs.alacritty = {
    enable = true;
    settings = {
      general = {
        import = [
          "${config.xdg.configHome}/alacritty/colors.toml"
        ];
      };

      font = {
        normal = {
          family = "JetBrainsMono Nerd Font";
          style = "Regular";
        };
        size = 11;
      };

      window = {
        opacity = 0.9;
	decorations = "None";
        padding = {
          x = 10;
          y = 10;
        };
      };
    };
  };
}
