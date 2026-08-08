{ ... }:

{
  programs.bash = {
    enable = true;

    shellAliases = {
      ll = "ls -lah";
      rebuild = "sudo nixos-rebuild switch --flake /etc/nixos#nixos-btw";
    };
  };


  home.file.".local/bin/gnr" = {
	executable = true;

	text = ''
		#!/usr/bin/env bash


		set -e

		sudo nixos-rebuild switch --flake /etc/nixos#nixos-btw

		dir=$(pwd)

		cd /etc/nixos

		git add .
		git commit -m "$1"
		git push

		cd "$dir"
	'';
  };
}
