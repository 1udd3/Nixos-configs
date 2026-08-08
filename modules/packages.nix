{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
	git
	neovim
	alacritty
	firefox
	bat
	fastfetch
	tree
	swaybg
  ];
}
