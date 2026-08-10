
{ pkgs, ... }:
{	
	environment.systemPackages = with pkgs; [
		steam
		xwayland-satellite
		xrandr
	];
	hardware.graphics = {
		enable = true;
		enable32Bit = true;
	};

	boot.initrd.kernelModules = [ "amdgpu" ];

	services.xserver.videoDrivers = [ "amdgpu" ];
}
