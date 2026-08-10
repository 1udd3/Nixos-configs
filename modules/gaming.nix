
{ pkgs, ... }:
{	
	environment.systemPackages = with pkgs; [
		steam
		xwayland-satellite
		xorg.xrandr
	];
}
