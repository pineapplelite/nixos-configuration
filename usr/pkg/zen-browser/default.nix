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
    "browser.download_start_downloads_in_tmp_dir" = true;
    "browser.uitour.enabled" = false;
    "privacy.globalprivacycontrol.enabled" = true;

    "security.OCSP.enabled" = 0;
    "privacy.antitracking.isolateContentScriptResources" = true;
    "security.csp.reporting.enabled" = false;

    "security.ssl.treat_unsafe_negotiation_as_broken" = true;
    "browser.xul.error_pages.expert_bad_cert" = true;
    "security.tls.enable_0rtt_data" = false;

    "browser.cache.disk.enable" = false;
    "browser.privatebrowsing.forceMediaMemoryCache" = true;
    "media.memory_cache_max_size" = 65536;
    "browser.sessionstore.interval" = 60000;

    "privacy.history.custom" = true;
    "browser.privatebrowsing.resetPBM.enabled" = true;

    "network.http.speculative-parallel-limit" = 0;
    "network.dns.disablePrefetch" = true;
    "network.dns.disablePrefetchFromHTTPS" = true;
    "browser.urlbar.speculativeConnect.enabled" = false;
    "browser.places.speculativeConnect.enabled" = false;
    "network.prefetch-next" = false;

    "browser.urlbar.trimHttps" = true;
    "browser.urlbar.untrimOnUserInteraction.featureGate" = true;
    "browser.search.separatePrivateDefault.ui.enabled" = true;
    "browser.search.suggest.enabled" = false;
    "browser.urlbar.quicksuggest.enabled" = false;
    "browser.urlbar.groupLabels.enabled" = false;
    "browser.formfill.enable" = false;
    "network.IDN_show_punycode" = true;

    "dom.security.https_only_mode" = true;
    "dom.security.https_only_mode_error_page_user_suggestions" = true;

    "signon.formlessCapture.enabled" = false;
    "signon.privateBrowsingCapture.enabled" = false;
    "network.auth.subresource-http-auth-allow" = 1;
    "editor.truncate_user_pastes" = false;

    "extensions.enabledScopes" = 5;

    "network.http.referer.XOriginTrimmingPolicy" = 2;

    "privacy.userContext.ui.enabled" = true;

    "pdfjs.enableScripting" = false;

    "browser.safebrowsing.downloads.remote.enabled" = false;

    "permissions.default.desktop-notification" = 2;
    "permissions.default.geo" = 2;
    "geo.provider.network.url" = "https://beacondb.net/v1/geolocate";
    "browser.search.update" = false;
    "permissions.manager.defaultsUrl" = "";
    "extensions.getAddons.cache.enabled" = false;

    "datareporting.policy.dataSubmissionEnabled" = false;
    "datareporting.healthreport.uploadEnabled" = false;
    "toolkit.telemetry.unified" = false;
    "toolkit.telemetry.enabled" = false;
    "toolkit.telemetry.server" = "data:,";
    "toolkit.telemetry.archive.enabled" = false;
    "toolkit.telemetry.newProfilePing.enabled" = false;
    "toolkit.telemetry.shutdownPingSender.enabled" = false;
    "toolkit.telemetry.updatePing.enabled" = false;
    "toolkit.telemetry.bhrPing.enabled" = false;
    "toolkit.telemetry.firstShutdownPing.enabled" = false;
    "toolkit.telemetry.coverage.opt-out" = true;
    "toolkit.coverage.opt-out" = true;
    "toolkit.coverage.endpoint.base" = "";
    "browser.newtabpage.activity-stream.feeds.telemetry" = false;
    "browser.newtabpage.activity-stream.telemetry" = false;
    "datareporting.usage.uploadEnabled" = false;

    "app.shield.optoutstudies.enabled" = false;
    "app.normandy.enabled" = false;
    "app.normandy.api_url" = "";

    "breakpad.reportURL" = "";
    "browser.tabs.crashReporting.sendReport" = false;

    "extensions.getAddons.showPane" = false;
    "extensions.htmlaboutaddons.recommendations.enabled" = false;
    "browser.discovery.enabled" = false;
    "browser.shell.checkDefaultBrowser" = false;
    "browser.newtabpage.activity-stream.asrouter.userprefs.cfr.addons" = false;
    "browser.newtabpage.activity-stream.asrouter.userprefs.cfr.features" = false;
    "browser.preferences.moreFromMozilla" = false;
    "browser.aboutConfig.showWarning" = false;
    "browser.startup.homepage_override.mstone" = "ignore";
    "browser.aboutwelcome.enabled" = false;
    "browser.profiles.enabled" = true;

    "toolkit.legacyUserProfileCustomizations.stylesheets" = true;
    "browser.compactmode.show" = true;
    "browser.privateWindowSeparation.enabled" = false;

    "browser.ml.enable" = false;
    "browser.ml.chat.enabled" = false;
    "browser.ml.chat.menu" = false;
    "browser.tabs.groups.smart.enabled" = false;
    "browser.ml.linkPreview.enabled" = false;

    "full-screen-api.transition-duration.enter" = "0 0";
    "full-screen-api.transition-duration.leave" = "0 0";
    "full-screen-api.warning.timeout" = 0;

    "browser.urlbar.trending.featureGate" = false;

    "browser.newtabpage.activity-stream.default.sites" = "";
    "browser.newtabpage.activity-stream.showSponsoredTopSites" = false;
    "browser.newtabpage.activity-stream.feeds.section.topstories" = false;
    "browser.newtabpage.activity-stream.showSponsored" = false;
    "browser.newtabpage.activity-stream.showSponsoredCheckboxes" = false;

    "browser.download.manager.addToRecentDocs" = false;

    "browser.download.open_pdf_attachments_inline" = true;

    "browser.bookmarks.openInTabClosesMenu" = false;
    "browser.menu.showViewImageInfo" = true;
    "findbar.highlightAll" = true;
    "layout.word_select.eat_space_to_next_word" = false;

    "media.peerconnection.enabled" = false;
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

