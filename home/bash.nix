{ ... }:

{
  programs.bash = {
    enable = true;

    shellAliases = {
      ll = "ls -lah";
      cn = "cd /etc/nixos";
    };
    
    bashrcExtra = ''
       fastfetch
    '';

  };


  home.sessionPath = [
    "$HOME/.local/bin"
  ];
}
