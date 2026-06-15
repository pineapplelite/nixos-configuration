{ config, pkgs, lib, ... }:

let
	users = import ./users.nix {
		inherit pkgs;
	};
in
{
	users.users =
		lib.mapAttrs
			(username: user_data: user_data.user)
			users;
	home-manager.users =
		lib.mapAttrs
			(username: user_data: {
				home.username = username;
				home.homeDirectory = config.users.users.${username}.home;
			} // (user_data.home or {}))
			users;
}
