{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
	git
	vim
	alacritty
	firefox
	bat
  ];
}
