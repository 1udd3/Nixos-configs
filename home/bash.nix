{ ... }:

{
  programs.bash = {
    enable = true;

    shellAliases = {
      ll = "ls -lah";
      rebuild = "sudo nixos-rebuild switch --flake /etc/nixos#nixos-btw";
      gnr = "~/skripts/gnr.sh";
    };
  };
}
