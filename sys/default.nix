{ config, ... }:

{
	imports = [
		./hardware
		./boot.nix
		./kernel.nix
		./security.nix
		./memory.nix
		./locale.nix
		./networking.nix
		./xdg.nix
		./env.nix
	];
	nixpkgs.config.allowUnfree = true;
	nix.settings.experimental-features = [ "nix-command" "flakes" ];
	system.stateVersion = "26.05";
}
