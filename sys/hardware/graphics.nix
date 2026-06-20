{ config, pkgs, ... }:

{
	hardware.graphics = {
		enable = true;
		enable32Bit = true;

		extraPackages = with pkgs;
		[
			libva
			libva-vdpau-driver
			libvdpau-va-gl
		];
	};
}
