
{ pkgs, ... }:
{	
	environment.systemPackages = with pkgs; [
		steam
		xwayland-satellite
		xrandr
		prismlauncher
	];
	hardware.graphics = {
		enable = true;
		enable32Bit = true;
	};

	boot.kernelParams = [
	"amdgpu.ppfeaturemask=0xffffffff"
	];

	boot.initrd.kernelModules = [ "amdgpu" ];

	services.xserver.videoDrivers = [ "amdgpu" ];
}
