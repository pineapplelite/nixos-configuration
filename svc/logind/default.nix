{ config, ... }:

{
  services.logind.settings.Login.HandleLidSwitch = "suspend";
}
