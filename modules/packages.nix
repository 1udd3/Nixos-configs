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
	waybar
	fuzzel
	btop
	localsend
	cbonsai
	imv
  ];
}
