
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
	];


	environment.sessionVariables = {
  		NIRI_DISABLE_DIRECT_SCANOUT = "1";
  		MOZ_ENABLE_WAYLAND = "1"; # Gör att Firefox slipper XWayland helt
	};

	boot.initrd.kernelModules = [ "amdgpu" ];
	
	boot.kernelPackages = pkgs.linuxPackages_latest;

	services.xserver.videoDrivers = [ "amdgpu" ];
}
