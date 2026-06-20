{ config, ... }:

{
  programs.firefox = {
    enable = true;
    languagePacks = [ "en-US" ];

    policies = {
      AppAutoUpdate = false;
      BackgroundAppUpdate = false;
      DisableAppUpdate = true;

      DisableFirefoxStudies = true;
      DisableTelemetry = true;
      CrashReportsSubmit = false;

      UserMessaging = true;
      SkipTermsOfUse = true;
      NoDefaultBookmarks = true;

      HardwareAcceleration = true;

      PasswordManagerEnabled = false;

      DisableSetDesktopBackground = true;

      ExtensionSettings = let
        moz = short: "https://addons.mozilla.org/firefox/downloads/latest/${short}/latest.xpi";
      in {
        "uBlock0@raymondhill.net" = {
          install_url = moz "ublock-origin";
          installation_mode = "force_installed";
        };
        "addon@darkreader.org" = {
          install_url = moz "darkreader";
          installation_mode = "normal_installed";
        };
        "{446900e4-71c2-419f-a6a7-df9c091e268b}" = {
          install_url = moz "bitwarden-password-manager";
          installation_mode = "normal_installed";
        };
      };
    };

    preferences = {
      "general.warnOnAboutConfig" = false;

      "privacy.globalprivacycontrol.enabled" = true;
      "privacy.donottrackheader.enabled" = true;
      "privacy.trackingprotection.enabled" = true;
      "privacy.trackingprotection.socialtracking.enabled" = true;

      "browser.startup.page" = 3;
      "browser.toolbars.bookmarks.visibility" = "always";
      "general.autoScroll" = true;
      "browser.urlbar.decodeURLsOnCopy" = true;

      "browser.download.useDownloadDir" = false;
      "browser.download.always_ask_before_handling_new_types" = true;
      "browser.download.start_downloads_in_tmp_dir" = true;

      "media.ffmpeg.vaapi.enabled" = true;
      "media.rdd-ffmpeg.enabled" = true;
      "widget.dmabuf.force-enabled" = true;
      "gfx.webrender.all" = true;
    };
  };
}
