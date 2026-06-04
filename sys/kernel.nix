{ config, pkgs, ... }:

{
	boot.kernelPackages = pkgs.linuxPackages_latest;

	boot.kernelParams = [
		"amd_pstate=active"
	];

	boot.kernel.sysctl = {
		"vm.swappiness" = 180;
		"vm.page-cluster" = 0;
	};

	boot.initrd.kernelModules = [
		"amdgpu"
	];
}
