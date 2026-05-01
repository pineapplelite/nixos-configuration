{ config, pkgs, ... }:

{
  boot.kernelPackages = pkgs.linuxPackages_latest;
  boot.kernelParams = [
    "amd_pstate=active"
    "iommu=pt"
    "pcie_aspm=off"
  ];
  boot.kernel.sysctl = {
    "vm.swappiness" = 200;
    "vm.watermark_boost_factor" = 0;
    "vm.watermark_scale_factor" = 150;
  };
  boot.initrd.kernelModules = [
    "amdgpu"
  ];
}
