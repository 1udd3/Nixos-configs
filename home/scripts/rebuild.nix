{ ... }:

{
	home.file.".local/bin/rebuild" = {
		executable = true;

		text = ''
			#!/usr/bin/env bash		

			set -e

			cd /etc/nixos

			git add .

			host=$(hostname)

			sudo nixos-rebuild switch --flake /etc/nixos#"$host"

			'';
		};
}
