{ config, ... }:

{
  time.timeZone = "Europe/Kyiv";
  i18n.defaultLocale = "en_US.UTF-8";
  console = {
    keyMap = "us";
  };
}
