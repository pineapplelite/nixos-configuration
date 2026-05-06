{ config, inputs, lib, pkgs, ... }:

{
  imports = [
    inputs.noctalia-shell.homeModules.default
  ];

  programs.noctalia-shell = {
    enable = true;

    settings = {
      bar = {
        barType = "simple";
        position = "top";
        monitors = [ ];
        density = "comfortable";

        showCapsule = true;
        capsuleOpacity = lib.mkForce 1.0;
        capsuleColorKey = "none";
        backgroundOpacity = lib.mkForce 0.93;
        useSeparateOpacity = false;
        
        widgetSpacing = 6;
        contentPadding = 2;
        fontScale = 1.2;
        marginVertical = 4;
        marginHorizontal = 4;
        frameThickness = 8;
        frameRadius = 12;
        outerCorners = true;
        enableExclusionZoneInset = true;

        displayMode = "always_visible";
        autoHideDelay = 500;
        autoShowDelay = 150;
        hideOnOverview = false;
        showOnWorkspaceSwitch = true;
        
        widgets = {
          left = [
            { id = "ControlCenter"; useDistroLogo = false; }
            { id = "ActiveWindow"; }
            { id = "SystemMonitor"; }
          ];
          center = [
            { id = "Workspace"; }
          ];
          right = [
            { id = "Tray"; }
            { id = "Battery"; }
            { id = "Volume"; }
            { id = "Brightness"; }
            { id = "Bluetooth"; }
            { id = "Network"; }
            { id = "Clock"; }
            { id = "NotificationHistory"; }
          ];
        };
        mouseWheelAction = "workspace";
        reverseScroll = false;
        mouseWheelWrap = true;
        middleClickAction = "none";
        rightClickAction = "controlCenter";
        rightClickFollowMouse = true;
      };
      general = {
        avatarImage = lib.mkForce "";
        dimmerOpacity = 0.4;
        showScreenCorners = true;
        forceBlackScreenCorners = false;
        scaleRatio = 1;
        radiusRatio = 1;
        iRadiusRatio = 1;
        boxRadiusRatio = 1;
        screenRadiusRatio = 1;
        animationSpeed = 1;
        animationDisabled = false;

        compactLockScreen = false;
        lockScreenAnimations = true;
        lockOnSuspend = true;
        showSessionButtonsOnLockScreen = true;
        showHibernateOnLockScreen = true;
        enableLockScreenMediaControls = false;
        enableLockScreenCountdown = true;
        lockScreenCountdownDuration = 100000;
        autoStartAuth = true;
        allowPasswordWithFprintd = false;
        passwordChars = true;
        lockScreenMonitors = [ ];
        lockScreenBlur = 0;
        lockScreenTint = 0;
        
        clockStyle = "custom";
        clockFormat = "hh\nmm";
        enableShadows = true;
        enableBlurBehind = true;
        shadowDirection = "bottom_right";
        shadowOffsetX = 2;
        shadowOffsetY = 3;
        language = lib.mkForce "";
        allowPanelsOnScreenWithoutBar = true;
        showChangelogOnStartup = false;
        telemetryEnabled = false;
        reverseScroll = false;
        smoothScrollEnabled = true;

        keybinds = {
          keyUp = [
            "Up"
          ];
          keyDown = [
            "Down"
          ];
          keyLeft = [
            "Left"
          ];
          keyRight = [
            "Right"
          ];
          keyEnter = [
            "Return"
            "Enter"
          ];
          keyEscape = [
            "Esc"
          ];
          keyRemove = [
            "Del"
          ];
        };
      };
      
      ui = {
        fontDefault = lib.mkForce "";
        fontFixed = lib.mkForce "";
        fontDefaultScale = lib.mkForce "1";
        fontFixedScale = lib.mkForce "1";
        tooltipsEnabled = true;
        scrollbarAlwaysVisible = true;
        boxBorderEnabled = false;
        panelBackgroundOpacity = lib.mkForce 0.93;
        translucentWidgets = false;
        panelsAttachedToBar = true;
        settingsPanelMode = "attached";
        settingsPanelSideBarCardStyle = true;
      };

      location = {
        name = "";
        weatherEnabled = true;
        weatherShowEffects = true;
        weatherTaliaMascotAlways = false;
        useFahrenheit = false;
        use12hourFormat = false;
        showWeekNumberInCalendar = true;
        showCalendarEvents = true;
        showCalendarWeather = true;
        analogClockInCalendar = false;
        firstDayOfWeek = -1;
        hideWeatherTimezone = false;
        hideWeatherCityName = false;
        autoLocate = true;
      };

      calendar = {
        cards = [
          {
            enabled = true;
            id = "calendar-header-card";
          }
          {
            enabled = true;
            id = "calendar-month-card";
          }
          {
            enabled = true;
            id = "weather-card";
          }
        ];
      };
      wallpaper = {
        enabled = true;
        overviewEnabled = false;
        directory = "";
        monitorDirectories = [ ];
        enableMultiMonitorDirectories = false;
        showHiddenFiles = true;
        viewMode = "single";
        setWallpaperOnAllMonitors = true;
        linkLightAndDarkWallpapers = true;

        fillMode = "crop";
        fillColor = "#000000";
        useSolidColor = false;
        solidColor = "#1a1a2e";

        automationEnabled = false;
        wallpaperChangeMode = "random";
        randomIntervalSec = 300;
        transitionDuration = 1500;
        transitionType = [
          "fade"
          "disc"
          "stripes"
          "wipe"
          "pixelate"
          "honeycomb"
        ];
        skipStartupTransition = false;
        transitionEdgeSmoothness = 0.05;

        panelPosition = "follow_bar";
        hideWallpaperFilenames = false;
        useOriginalImages = false;
        overviewBlur = 0.4;
        overviewTint = 0.4;

        useWallhaven = false;
        wallhavenQuery = "";
        wallhavenSorting = "relevance";
        wallhavenOrder = "desc";
        wallhavenCategories = "111";
        wallhavenPurity = "100";
        wallhavenApiKey = "";
        wallhavenResolutionMode = "atleast";
        wallhavenResolutionWidth = "";
        wallhavenResolutionHeight = "";
        sortOrder = "name";
        favorities = [ ];
      };
      appLauncher = {
        enableClipboardHistory = true;
        autoPasteClipboard = false;
        enableClipPreview = true;
        clipboardWrapText = true;
        enableClipboardSmartIcons = true;
        enableClipboardChips = true;
        clipboardWatchTextCommand = "wl-paste --type text --watch cliphist store";
        clipboardWatchImageCommand = "wl-paste --type image --watch cliphist store";
        position = "center";
        pinnedApps = [ ];
        sortByMostUsed = true;
        terminalCommand = "foot -e";
        customLaunchPrefixEnabled = false;
        customLaunchPrefix = "";
        viewMode = "grid";
        showCategories = true;
        iconMode = "material";
        showIconBackground = false;
        enableSettingsSearch = true;
        enableWindowsSearch = true;
        enableSessionSearch = true;
        ignoreMouseInput = false;
        screenshotAnnotationTool = "";
        overviewLayer = false;
        density = "comfortable";
      };
      controlCenter = {
        position = "close_to_bar_button";
        diskPath = "/";

        shortcuts = {
          left = [
            { id = "Network"; }
            { id = "Bluetooth"; }
            { id = "WallpaperSelector"; }
            { id = "Notifications"; }
          ];
          right = [
            { id = "NightLight"; }
            { id = "KeepAwake"; }
            { id = "NoctaliaPerformance"; }
            { id = "PowerProfile"; }
          ];
        };
        cards = [
          {
            enabled = true;
            id = "weather-card";
          }
          {
            enabled = true;
            id = "profile-card";
          }
          {
            enabled = true;
            id = "audio-card";
          }
          {
            enabled = true;
            id = "brightness-card";
          }
          {
            enabled = true;
            id = "media-sysmon-card";
          }
        ];
      };
      systemMonitor = {
        cpuWarningThreshold = 80;
        cpuCriticalThreshold = 95;
        tempWarningThreshold = 75;
        tempCriticalThreshold = 90;
        gpuWarningThreshold = 85;
        gpuCriticalThreshold = 98;
        memWarningThreshold = 85;
        memCriticalThreshold = 95;
        swapWarningThreshold = 40;
        swapCriticalThreshold = 80;
        diskWarningThreshold = 85;
        diskCriticalThreshold = 95;
        diskAvailWarningThreshold = 15;
        diskAvailCriticalThreshold = 5;
        batteryWarningThreshold = 20;
        batteryCriticalThreshold = 10;

        enableDgpuMonitoring = false;
        useCustomColors = false;
        warningColor = "";
        criticalColor = "";
        externalMonitor = "btm";
      };
      noctaliaPerformance = {
        disableWallpaper = true;
        disableDesktopWidgets = true;
      };
      dock = {
        enabled = true;
        position = "bottom";
        displayMode = "auto_hide";
        dockType = "floating";
        backgroundOpacity = lib.mkForce 0.93;
        floatingRatio = 1;
        size = 1;
        onlySameOutput = true;
        monitors = [ ];
        pinnedApps = [ ];
        colorizeIcons = true;
        showLauncherIcon = true;
        launcherPosition = "end";
        launcherIcon = "";
        launcherIconColor = "primary";
        pinnedStatic = false;
        inactiveIndicators = true;
        groupApps = true;
        groupContextMenuMode = "extended";
        groupClickAction = "cycle";
        groupIndicatorStyle = "dots";
        deadOpacity = 0.4;
        animationSpeed = 1;
        sitOnFrame = false;
        showDockIndicator = true;
        indicatorColor = "primary";
        indicatorOpacity = 0.4;
      };
      network = {
        bluetoothRssiPollingEnabled = false;
        bluetoothRssiPollIntervalMs = 60000;
        networkPanelView = "wifi";
        wifiDetailsViewMode = "grid";
        bluetoothDetailsViewMode = "grid";
        bluetoothHideUnnamedDevices = true;
        disableDiscoverability = true;
        bluetoothAutoConnect = true;
      };
      sessionMenu = {
        enableCountdown = true;
        countdownDuration = 5000;
        position = "center";
        showHeader = true;
        showKeybinds = true;
        largeButtonsStyle = true;
        largeButtonsLayout = "grid";

        powerOptions = [
          {
            action = "lock";
            enabled = true;
            keybind = "1";
          }
          {
            action = "logout";
            enabled = true;
            keybind = "2";
          }
          {
            action = "reboot";
            enabled = true;
            keybind = "3";
          }
          {
            action = "shutdown";
            enabled = true;
            keybind = "4";
          }
          {
            action = "rebootToUefi";
            enabled = true;
            keybind = "5";
          }
        ];
      };
      notifications = {
        enabled = true;
        enableMarkdown = true;
        density = "default";
        monitors = [ ];
        location = "top_right";
        overlayLayer = true;
        backgroundOpacity = lib.mkForce 0.93;
        respectExpireTimeout = false;

        lowUrgencyDuration = 5;
        normalUrgencyDuration = 10;
        criticalUrgencyDuration = 30;

        clearDismissed = false;
        saveToHistory = {
          low = true;
          normal = true;
          critical = true;
        };

        sounds = {
          enabled = false;
          volume = 0.5;
          separateSounds = false;
          criticalSoundFile = "";
          normalSoundFile = "";
          lowSoundFile = "";
          excludedApps = "";
        };

        enableMediaToast = true;
        enableKeyboardLayoutToast = true;
        enableBatteryToast = true;
      };
      osd = {
        enabled = true;
        location = "top_right";
        autoHideMs = 1500;
        overlayLayer = true;
        backgroundOpacity = lib.mkForce 0.93;
        enabledTypes = [ 0 1 2 ];
        monitors = [ ];
      };
      audio = {
        volumeStep = 5;
        volumeOverdrive = false;
        spectrumFrameRate = 30;
        visualizerType = "wave";
        spectrumMirrored = true;
        mprisBlocklist =  [ ];
        preferredPlayer = "";
        volumeFeedback = false;
        volumeFeedbackSoundFile = "";
      };
      brightness = {
        brightnessStep = 5;
        enforceMinimum = true;
        enableDdcSupport = false;
        backlightDeviceMappings = [ ];
      };
      colorSchemes = {
        useWallpaperColors = false;
        predefinedScheme = "Tokyo Night";
        darkMode = true;
        schedulingMode = "off";
        manualSunrise = "6:30";
        manualSunset = "18:30";
        generationMethod = "tonal-spot";
        monitorForColors = "";
        syncGsettings = true;
      };
      templates = {
        activeTemplates = [ ];
        enableUserTheming = true;
      };
      nightLight = {
        enabled = true;
        forced = false;
        autoSchedule = true;
        nightTemp = 3500;
        dayTemp = 6500;
        manualSunrise = "06:30";
        manualSunset = "23:00";
      };
      hooks = {
        enabled = false;
        wallpaperChange = "";
        darkModeChange = "";
        screenLock = "";
        screenUnlock = "";
        performanceModeEnabled = "";
        performanceModeDisabled = "";
        startup = "";
        session = "";
        colorGeneration = "";
      };
      plugins = {
        autoUpdate = false;
        notifyUpdates = true;
      };
      idle = {
        enabled = true;

        screenOffTimeout = 120;
        lockTimeout = 150;
        suspendTimeout = 500;

        fadeDuration = 5;

        screenOffCommand = "niri msg action power-off-monitors";
        lockCommand = "noctalia-shell ipc call lockScreen lock";
        suspendCommand = "noctalia-shell ipc call sessionMenu lockAndSuspend";

        resumeScreenOffCommand = "niri msg action power-on-monitors";
        resumeLockCommand = "noctalia-shell ipc call lockScreen unlock";
        resumeSuspendCommand = "";
      };
      desktopWidgets = {
        enabled = false;
        overviewEnabled = true;
        gridSnap = false;
        gridSnapScale = false;
        monitorWidgets = [ ];
      };
    };
  };
}
