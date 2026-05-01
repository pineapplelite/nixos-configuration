{ config, ... }:

{
  zramSwap = {
    enable = true;
    algorithm = "zstd";
    priority = 100;
    memoryPercent = 50;
  };
  swapDevices = [
    {
      device = "/var/lib/swapfile";
      size = 16384;
      priority = 0;
      randomEncryption.enable = true;
    }
  ];
}
