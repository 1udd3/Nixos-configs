{ ... }:

{
  home.file.".local/bin/gnr" = {
    executable = true;

    text = ''
      #!/usr/bin/env bash

      set -e

      cd /etc/nixos

      git add .

      sudo nixos-rebuild switch --flake /etc/nixos#nixos-btw

      dir=$(pwd)



      git commit -m "$1"
      git push

      cd "$dir"
    '';
  };
}
