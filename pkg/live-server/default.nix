{ config, pkgs, ... }:

{
	environment.systemPackages = with pkgs;
	[
		live-server
	];
}
