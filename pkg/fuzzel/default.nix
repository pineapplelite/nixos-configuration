{ config, pkgs, ... }:

{
	environment.systemPackages = with pkgs;
	[
		fuzzel
	];
}
