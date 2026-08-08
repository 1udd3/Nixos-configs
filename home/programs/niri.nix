{ ... }:

{
  programs.niri.settings = {
    outputs."DP-1" = {
      mode = "2560x1440@239.970";
      scale = 1;
      position = {
        x = 1280;
        y = 0;
      };
    };

    hotkey-overlay = {
      skip-at-startup = true;
    };

    binds."Mod+B" = {
      spawn = [ "firefox" ];
    };
  };
}
