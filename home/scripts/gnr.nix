{ ... }:

{
  home.file.".local/bin/gnr" = {
    executable = true;

    text = ''
      #!/usr/bin/env bash

      set -e

      cd /etc/nixos

      host=$(hostname)

      git add .

      sudo nixos-rebuild switch --flake /etc/nixos#"$host" &> /dev/null

      dir=$(pwd)



      git commit -m "$1"
      git push

      cd "$dir"
    '';
  };
}
