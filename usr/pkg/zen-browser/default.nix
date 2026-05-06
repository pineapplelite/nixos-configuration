{ config, inputs, lib, pkgs, ... }:

let
  extension = shortId: guid: {
    name = guid;
    value = {
      install_url = "https://addons.mozilla.org/en-US/firefox/downloads/latest/${shortId}/latest.xpi";
      installation_mode = "normal_installed";
    };
  };
  extensions = [
    (extension "ublock-origin" "uBlock0@raymondhill.net")
    (extension "bitwarden-password-manager" "{446900e4-71c2-419f-a6a7-df9c091e268b}")
    (extension "darkreader" "addon@darkreader.org")
  ];
  prefs = {
    "browser.contentblocking.category" = "strict";
    "privacy.globalprivacycontrol.enabled" = true;
    "dom.security.https_only_mode" = true;
    "browser.download.start_downloads_in_tmp_dir" = true;

    "browser.newtabpage.activity-stream.showSponsored" = false;
    "browser.newtabpage.activity-stream.showSponsoredTopSites" = false;
    "browser.discovery.enabled" = false;
    "browser.preferences.moreFromMozilla" = false;

    "datareporting.policy.dataSubmissionEnabled" = false;
    "datareporting.healthreport.uploadEnabled" = false;
    "toolkit.telemetry.enabled" = false;
    "toolkit.telemetry.unified" = false;
    "app.shield.optoutstudies.enabled" = false;
    "app.normandy.enabled" = false;

    "network.dns.disablePrefetch" = true;
    "network.prefetch-next" = false;
    "browser.urlbar.speculativeConnect.enabled" = false;
    "browser.search.suggest.enabled" = false;

    "browser.aboutConfig.showWarning" = false;
    "full-screen-api.warning.timeout" = 0;
    "media.peerconnection.enabled" = false;

    "signon.rememberSignons" = false;

    "browser.download.useDownloadDir" = false;
    "browser.download.always_ask_before_handling_new_types" = true;

    "zen.watermark.enabled" = false;
    "zen.urlbar.show-protections-icon" = true;

    "widget.gtk.overlay-scrollbars.enabled" = true;
    "browser.underline_anchors" = true;
  };

in {
  home.packages = [
    (
      pkgs.wrapFirefox inputs.zen-browser.packages.${pkgs.stdenv.hostPlatform.system}.zen-browser-unwrapped {
        extraPrefs = lib.concatLines (
          lib.mapAttrsToList (
            name: value: ''lockPref(${lib.strings.toJSON name},${lib.strings.toJSON value});''
          ) prefs
        );

        extraPolicies = {
          DisableTelemetry = true;
          ExtensionSettings = builtins.listToAttrs extensions;

          SearchEngines = {
            Default = "DuckDuckGo";
            Remove = [ "Google" "Bing" ];
            Add = [
              {
                Name = "Nix Packages";
                URLTemplate = "https://search.nixos.org/packages?query={searchTerms}";
                IconURL = "https://wiki.nixos.org/favicon.ico";
                Alias = "@np";
              }
              {
                Name = "Flathub";
                URLTemplate = "https://flathub.org/apps/search?q={searchTerms}";
                IconURL = "https://flathub.org/favicon.ico";
                Alias = "@fh";
              }
              {
                Name = "GitHub";
                URLTemplate = "https://github.com/search?q={searchTerms}";
                IconURL = "https://github.githubassets.com/favicon.ico";
                Alias = "@gh";
              }
            ];
          };
        };
      }
    )
  ];
}

