{ pkgs, ... }:

let
  set-theme = pkgs.writeShellScriptBin "set-theme" ''
    if [ -z "$1" ]; then
      echo "Användning: set-theme /sökväg/till/bild.jpg"
      exit 1
    fi

    # Gör sökvägen absolut
    WALLPAPER="$(readlink -f "$1")"

    if [ ! -f "$WALLPAPER" ]; then
      echo "Fel: Filen '$WALLPAPER' finns inte!"
      exit 1
    fi

    # 1. Starta daemon BARA om den inte redan körs (använd -f för Nix wrappers)
    if ! pgrep -f "awww-daemon" > /dev/null; then
      ${pkgs.awww}/bin/awww-daemon &
      sleep 0.5
    fi

    # 2. Sätt bakgrunden med awww
    ${pkgs.awww}/bin/awww img "$WALLPAPER" --transition-type outer --transition-step 90

    # 3. Kör Matugen för färger & hooks
    ${pkgs.matugen}/bin/matugen image "$WALLPAPER"
  '';
in
{
  home.packages = [
    pkgs.awww
    set-theme
  ];
}
