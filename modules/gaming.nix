
{ pkgs, ... }:
{	
	environment.systemPackages = with pkgs; [
		steam
		xwayland-satellite
		xrandr
		prismlauncher
		gamescope
	];
	hardware.graphics = {
		enable = true;
		enable32Bit = true;
	};

	boot.kernelParams = [
	"amdgpu.ppfeaturemask=0xffffffff"
	"amdgpu.dcdebugmask=0x400"
	];

	boot.initrd.kernelModules = [ "amdgpu" ];

	services.xserver.videoDrivers = [ "amdgpu" ];
}
