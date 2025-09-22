{lib, ...}: {
  dconf.settings = with lib.hm.gvariant; {
    "org/gnome/desktop/interface" = {
      # dark mode
      color-scheme = "prefer-dark";

      # mouse cursor
      cursor-theme = "Bibata-Modern-Classic";
      cursor-size = 24;

      # configure clock
      clock-show-seconds = false;
      clock-show-weekday = false;
    };

    "org/gnome/desktop/wm/preferences" = {
      # top-bar buttons
      button-layout = ":maximize,minimize,close";
    };

    "org/gnome/gnome-session" = {
      # disable shutdown warning
      logout-prompt = false;
    };

    "org/gnome/desktop/input-sources" = {
      # set keyboard language
      sources = [(mkTuple ["xkb" "ro"])];
    };

    "org/gnome/settings-daemon/plugins/power" = {
      # disable auto suspend
      sleep-inactive-ac-type = "nothing";

      # power button shutdown
      power-button-action = "interactive";
    };

    "org/gnome/desktop/session" = {
      # disable screen blank
      idle-delay = mkUint32 0;
    };

    "org/gnome/desktop/wm/keybindings" = {
      # switch workspaces
      switch-to-workspace-1 = ["<Super>1"];
      switch-to-workspace-2 = ["<Super>2"];
      switch-to-workspace-3 = ["<Super>3"];
      switch-to-workspace-4 = ["<Super>4"];
      switch-to-workspace-5 = ["<Super>5"];
      switch-to-workspace-6 = ["<Super>6"];
      switch-to-workspace-7 = ["<Super>7"];
      switch-to-workspace-8 = ["<Super>8"];
      switch-to-workspace-9 = ["<Super>9"];
      switch-to-workspace-10 = ["<Super>0"];

      # move active program to specified workspace
      move-to-workspace-1 = ["<Shift><Super>1"];
      move-to-workspace-2 = ["<Shift><Super>2"];
      move-to-workspace-3 = ["<Shift><Super>3"];
      move-to-workspace-4 = ["<Shift><Super>4"];
      move-to-workspace-5 = ["<Shift><Super>5"];
      move-to-workspace-6 = ["<Shift><Super>6"];
      move-to-workspace-7 = ["<Shift><Super>7"];
      move-to-workspace-8 = ["<Shift><Super>8"];
      move-to-workspace-9 = ["<Shift><Super>9"];
      move-to-workspace-10 = ["<Shift><Super>0"];

      # enter fullscreen
      toggle-fullscreen = ["<Super>f"];

      # show desktop
      show-desktop = ["<Super>d"];

      # switch between all windows
      switch-windows = ["<Alt>Tab"];
      switch-windows-backward = ["<Shift><Alt>Tab"];

      # disable default behaviour
      switch-applications = [];
      switch-applications-backward = [];
    };

    "org/gnome/desktop/peripherals/keyboard" = {
      # faster scrolling in neovim
      delay = mkUint32 300;
      repeat-interval = mkUint32 15;
    };

    "org/gnome/shell/keybindings" = {
      # unbind launch shortcuts
      switch-to-application-1 = [];
      switch-to-application-2 = [];
      switch-to-application-3 = [];
      switch-to-application-4 = [];
      switch-to-application-5 = [];
      switch-to-application-6 = [];
      switch-to-application-7 = [];
      switch-to-application-8 = [];
      switch-to-application-9 = [];
      switch-to-application-10 = [];

      # unbind Super+M for custom binds
      toggle-message-tray = ["<Super>V"];
    };

    "org/gnome/settings-daemon/plugins/media-keys" = {
      # open home folder in nautilus
      home = ["<Super>E"];

      # specify custom binds
      custom-keybindings = [
        "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/"
        "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/"
        "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom2/"
      ];
    };

    # launch terminal
    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0" = {
      binding = "<Super>Return";
      command = "ghostty";
      name = "terminal";
    };

    # open browser
    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1" = {
      binding = "<Super>W";
      command = "wofizilla firefox";
      name = "browser";
    };

    # open email client
    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom2" = {
      binding = "<Super>M";
      command = "wofizilla thunderbird";
      name = "email client";
    };

    # set background image
    "org/gnome/desktop/background" = let
      imagePath = ../../assets/city-of-florence.jpg;
    in {
      picture-uri = "file://" + toString imagePath;
      picture-uri-dark = "file://" + toString imagePath;
    };

    # specify app folders
    "org/gnome/desktop/app-folders" = {
      folder-children = ["Utilities" "Circle" "Programming" "Creation" "Office" "Sound & Video" "Games" "Settings"];
    };

    "org/gnome/desktop/app-folders/folders/Utilities" = {
      name = "Utilities";
      categories = ["X-GNOME-Utilities"];
      apps = [
        "nm-connection-editor.desktop"
        "org.freedesktop.GnomeAbrt.desktop"
        "org.gnome.Boxes.desktop"
        "org.gnome.Calculator.desktop"
        "org.gnome.Characters.desktop"
        "org.gnome.Connections.desktop"
        "org.gnome.Console.desktop"
        "org.gnome.DejaDup.desktop"
        "org.gnome.DiskUtility.desktop"
        "org.gnome.Evince.desktop"
        "org.gnome.FileRoller.desktop"
        "org.gnome.Papers.desktop"
        "org.gnome.SystemMonitor.desktop"
        "org.gnome.TextEditor.desktop"
        "org.gnome.Usage.desktop"
        "org.gnome.baobab.desktop"
        "org.gnome.font-viewer.desktop"
        "org.gnome.seahorse.Application.desktop"
        "org.gnome.tweaks.desktop"
      ];
    };

    "org/gnome/desktop/app-folders/folders/Circle" = {
      name = "Circle";
      apps = [
        "org.gnome.gitlab.somas.Apostrophe.desktop"
        "com.belmoussaoui.Authenticator.desktop"
        "io.github.fizzyizzy05.binary.desktop"
        "com.rafaelmardojai.Blanket.desktop"
        "com.usebottles.bottles.desktop"
        "page.kramo.Cartridges.desktop"
        "io.gitlab.adhami3310.Converter.desktop"
        "com.belmoussaoui.Decoder.desktop"
        "io.github.revisto.drum-machine.desktop"
        "com.mardojai.ForgeSparks.desktop"
        "org.pipewire.Helvum.desktop"
        "io.github.mrvladus.List.desktop"
        "de.haeckerfelix.Fragments.desktop"
        "dev.bragefuglseth.Fretboard.desktop"
        "io.gitlab.adhami3310.Impression.desktop"
        "io.github.nozwock.Packet.desktop"
        "com.github.marhkb.Pods.desktop"
        "net.nokyan.Resources.desktop"
        "re.sonny.Tangram.desktop"
        "org.gnome.gitlab.YaLTeR.VideoTrimmer.desktop"
        "app.drey.Warp.desktop"
      ];
    };

    "org/gnome/desktop/app-folders/folders/Programming" = {
      name = "Programming";
      apps = [
        "android-studio.desktop"
        "arduino-ide.desktop"
        "codium.desktop"
        "org.godotengine.Godot4.5.desktop"
        "neovide.desktop"
        "openscad.desktop"
        "unityhub.desktop"
      ];
    };

    "org/gnome/desktop/app-folders/folders/Creation" = {
      name = "Creation";
      apps = [
        "aseprite.desktop"
        "blender.desktop"
        "gimp.desktop"
        "org.freecad.FreeCAD.desktop"
        "org.inkscape.Inkscape.desktop"
        "org.kde.krita.desktop"
        "com.obsproject.Studio.desktop"
      ];
    };

    "org/gnome/desktop/app-folders/folders/Sound & Video" = {
      name = "Sound & Video";
      apps = [
        "ardour8.desktop"
        "audacity.desktop"
        "cockos-reaper.desktop"
        "davinci-resolve.desktop"
        "guitarix.desktop"
        "org.musescore.MuseScore.desktop"
        "org.rncbc.qjackctl.desktop"
        "org.zrythm.Zrythm.desktop"
        "net.sourceforge.VMPK.desktop"
      ];
    };

    "org/gnome/desktop/app-folders/folders/Office" = {
      name = "Office";
      apps = [
        "startcenter.desktop"
        "writer.desktop"
        "impress.desktop"
        "calc.desktop"
        "base.desktop"
        "math.desktop"
        "draw.desktop"
      ];
    };

    "org/gnome/desktop/app-folders/folders/Games" = {
      name = "Games";
      categories = ["Game"];
      excluded-apps = [
        "com.usebottles.bottles.desktop"
        "page.kramo.Cartridges.desktop"
        "protonup-qt.desktop"
        "steam.desktop"
      ];
    };

    "org/gnome/desktop/app-folders/folders/Settings" = {
      name = "Settings";
      apps = [
        "OpenRGB.desktop"
        "nvidia-settings.desktop"
        "protonup-qt.desktop"
        "com.saivert.pwvucontrol.desktop"
        "vncviewer.desktop"
      ];
    };

    "org/gnome/shell" = {
      enabled-extensions = ["blur-my-shell@aunetx"];
      favorite-apps = [];
      app-picker-layout = map (lib.imap0 (position: (name: (mkDictionaryEntry [name (mkVariant [(mkDictionaryEntry ["position" (mkVariant position)])])])))) [
        [
          # row 1
          "org.gnome.Nautilus.desktop"
          "org.gnome.Epiphany.desktop"
          "org.gnome.Geary.desktop"
          "org.gnome.Calendar.desktop"
          "org.gnome.Contacts.desktop"
          "org.gnome.clocks.desktop"
          "org.gnome.Weather.desktop"
          "org.gnome.Maps.desktop"
          # row 2
          "org.gnome.Snapshot.desktop"
          "org.gnome.SoundRecorder.desktop"
          "org.gnome.Loupe.desktop"
          "org.gnome.Showtime.desktop"
          "org.gnome.Decibels.desktop"
          "org.gnome.Music.desktop"
          "org.gnome.Extensions.desktop"
          "org.gnome.Settings.desktop"
          # row 3
          "Utilities"
          "Circle"
        ]
        [
          # row 1
          "nixos-manual.desktop"
          "Alacritty.desktop"
          "com.mitchellh.ghostty.desktop"
          "zen-beta.desktop"
          "firefox.desktop"
          "thunderbird.desktop"
          "proton-mail.desktop"
          "obsidian.desktop"
          # row 2
          "mullvad-vpn.desktop"
          "bitwarden.desktop"
          "GalaxyBudsClient.desktop"
          "discord.desktop"
          "signal.desktop"
          "spotify.desktop"
          "steam.desktop"
          "vlc.desktop"
          # row 3
          "Programming"
          "Office"
          "Creation"
          "Sound & Video"
          "Games"
          "Settings"
        ]
      ];
    };

    # transparency and blur
    "org/gnome/shell/extensions/blur-my-shell/panel" = {
      brightness = 0.59999999999999998;
      override-background-dynamically = true;
      pipeline = "pipeline_default";
      sigma = 30;
    };

    "org/gnome/shell/extensions/blur-my-shell/applications" = {
      blur = true;
      dynamic-opacity = false;
      whitelist = [
        "GalaxyBudsClient"
        "better_control.py"
        "com.mitchellh.ghostty"
        "com.rafaelmardojai.Blanket"
        "de.haeckerfelix.Fragments"
        "dev.bragefuglseth.Fretboard"
        "io.gitlab.adhami3310.Impression"
        "org.gnome.Calculator"
        "org.gnome.Characters"
        "org.gnome.Contacts"
        "org.gnome.Extensions"
        "org.gnome.FileRoller"
        "org.gnome.Nautilus"
        "org.gnome.Settings"
        "org.gnome.Shell.Extensions"
        "org.gnome.SystemMonitor"
        "org.gnome.TextEditor"
        "org.gnome.Weather"
        "org.gnome.baobab"
        "org.gnome.clocks"
        "org.gnome.gitlab.somas.Apostrophe"
        "page.kramo.Cartridges"
        "io.github.fizzyizzy05.binary"
        "org.gnome.Calendar"
        "org.gnome.Decibels"
        "org.gnome.SoundRecorder"
        "org.gnome.Music"
        "org.gnome.Papers"
        "com.saivert.pwvucontrol"
        "com.belmoussaoui.Authenticator"
      ];
    };
  };
}
