{
  description = "unix-like nixos configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {
    self,
    nixpkgs,
    home-manager,
    ...
  }@inputs:
  {
    nixosConfigurations.nixos = nixpkgs.lib.nixosSystem
    {
      system = "x86_64-linux";
      modules = [
        ./etc
        ./boot
        ./pkg
        ./home
        home-manager.nixosModules.home-manager
        {
          home-manager = {
            backupFileExtension = "backup";
            useGlobalPkgs = true;
            useUserPackages = true;
            extraSpecialArgs = { inherit inputs; };
            sharedModules = [
              ./usr
            ];
          };
        }
      ];
    };
  };
}
