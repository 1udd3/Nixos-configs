{ ... }:
{
    home.file.".local/bin/i" = {
        executable = true;

        text = ''
            #!/usr/bin/env bash

            set -e

            path="/etc/nixos/modules/packages.nix"

            if [ "$1" = "-r" ]; then
                shift

                if [ -z "$1" ]; then
                    echo "usage: i -r <pkg>"
                    exit 1
                fi

                for i in "$@"; do
                    echo "removing $i"
                    sed -i "/\b$i\b/d" "$path"
                done

                rebuild

            else

                if [ -z "$1" ]; then
                    echo "usage: i <pkg>"
                    exit 1
                fi

                for i in "$@"; do
                    echo "adding $i"
                    sed -i "/\s*\]/i \        $i" "$path"
                done

                rebuild

            fi
        '';
    };
}
