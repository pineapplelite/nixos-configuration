{ pkgs, ... }:

{
  pineapplelite = {
    user = {
    	isNormalUser = true;
    	shell = pkgs.fish;
    	extraGroups = [ "wheel" "networkmanager" "video" "input" ];
    };
    home = {
  		home.packages = with pkgs;
    	[
    		telegram-desktop
    		fluffychat
    	];

    	home.stateVersion = "26.05";
    };
  };
}
