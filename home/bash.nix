{ ... }:

{
  programs.bash = {
    enable = true;

    shellAliases = {
      ll = "ls -lah";
      rebuild = "sudo nixos-rebuild switch --flake /etc/nixos#desktop";
    };
    
    bashrcExtra = ''
       fastfetch
    '';

  };


  home.sessionPath = [
    "$HOME/.local/bin"
  ];
}
