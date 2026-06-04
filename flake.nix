{
	description = "unix-like nixos configuration";

	inputs = {
		nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
		home-manager = {
			url = "github:nix-community/home-manager";
			inputs.nixpkgs.follows = "nixpkgs";
		};
		stylix = {
			url = "github:nix-community/stylix";
			inputs.nixpkgs.follows = "nixpkgs";
		};
	};

	outputs = { self, nixpkgs, home-manager, ... }@inputs:
	{
		nixosConfigurations.nixos = nixpkgs.lib.nixosSystem
		{
			system = "x86_64-linux";
			specialArgs = { inherit inputs; };
			modules = [
				./sys
				./svc
				./pkg
				./ui
				./home

				home-manager.nixosModules.home-manager
				{
					home-manager = {
						backupFileExtension = "bak";
						useGlobalPkgs = true;
						useUserPackages = true;
						extraSpecialArgs = { inherit inputs; };
						sharedModules = [
							./home/config
						];
					};
				}
			];
		};
	};
}
