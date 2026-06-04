{ config, pkgs, ... }:

{
	environment.systemPackages = with pkgs;
	[
		vscode-langservers-extracted
	];
}
