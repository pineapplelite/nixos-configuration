{ config, pkgs, ... }:

{
	environment.systemPackages = with pkgs;
	[
		typescript-language-server
	];
}
