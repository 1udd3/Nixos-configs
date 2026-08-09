{ ... }:

{
  programs.waybar = {
    enable = true;

    settings = {
      mainBar = {
        layer = "top";
        position = "top";
        height = 32;
        spacing = 6;

        modules-left = [
          "niri/workspaces"
        ];

        modules-center = [
          "niri/window"
        ];

        modules-right = [
          "pulseaudio"
          "cpu"
          "clock"
          "tray"
        ];

        "niri/workspaces" = {
          all-outputs = true;
          format = "{icon}";

          format-icons = {
            active = "";
            focused = "";
            urgent = "";
            default = "";
            empty = "";
          };
        };

        "niri/window" = {
          format = "{title}";
          icon = true;
          icon-size = 18;
        };

        pulseaudio = {
          format = "{volume}% {icon}";
          format-muted = "󰝟";

          format-icons = {
            headphone = "";
            headset = "";

            default = [
              ""
              ""
              ""
            ];
          };

          scroll-step = 5;
          on-click = "pavucontrol";
        };

        network = {
          format-wifi = " {signalStrength}%";
          format-ethernet = "󰈀";
          format-linked = "󰈀";
          format-disconnected = "󰖪";
          tooltip-format = "{ifname}\n{ipaddr}";
        };

        cpu = {
          format = " {usage}%";
        };

        clock = {
          format = " {:%H:%M}";
          format-alt = "{:%Y-%m-%d %H:%M}";
          tooltip-format = "<big>{:%B %Y}</big>\n<tt>{calendar}</tt>";
        };

        tray = {
          spacing = 8;
        };
      };
    };
	style = ''
  @import "colors.css";

  * {
    font-family: "JetBrainsMono Nerd Font";
    font-size: 13px;
    font-weight: bold;
    border: none;
    min-height: 0;
  }

  window#waybar {
    background: alpha(@background, 0.85);
    color: @foreground;
    border-radius: 12px;
  }

  #workspaces button {
    padding: 0 5px;
    font-size: 18px;
    color: @foreground;
  }

  #workspaces button.focused {
    color: @primary;
  }

  #clock,
  #cpu,
  #memory,
  #temperature,
  #pulseaudio,
  #tray {
    background: alpha(@background-alt, 0.8);
    padding: 0 12px;
    margin: 4px;
    border-radius: 10px;
  }

  #clock {
    color: @tertiary;
  }

  #pulseaudio {
    color: @secondary;
  }

  #cpu {
    color: @primary;
  }

  #memory {
    color: @secondary;
  }

  #temperature {
    color: @tertiary;
  }

  #tray {
    color: @foreground;
  }

  tooltip {
    background: @background;
    color: @foreground;
    border-radius: 8px;
  }
'';
  };
}

