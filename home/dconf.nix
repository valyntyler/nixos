{ lib, ... }:

{
  dconf.settings = with lib.hm.gvariant; {
    "org/gnome/desktop/interface" = {
      # dark mode
      color-scheme = "prefer-dark";

      # configure clock
      clock-show-seconds = false;
      clock-show-weekday = false;
    };

    "org/gnome/gnome-session" = {
      # disable shutdown warning
      logout-prompt = false;
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
      switch-to-workspace-1 = [ "<Super>1" ];
      switch-to-workspace-2 = [ "<Super>2" ];
      switch-to-workspace-3 = [ "<Super>3" ];
      switch-to-workspace-4 = [ "<Super>4" ];
      switch-to-workspace-5 = [ "<Super>5" ];
      switch-to-workspace-6 = [ "<Super>6" ];
      switch-to-workspace-7 = [ "<Super>7" ];
      switch-to-workspace-8 = [ "<Super>8" ];
      switch-to-workspace-9 = [ "<Super>9" ];
      switch-to-workspace-10 = [ "<Super>0" ];

      # move active program to specified workspace
      move-to-workspace-1 = [ "<Shift><Super>1" ];
      move-to-workspace-2 = [ "<Shift><Super>2" ];
      move-to-workspace-3 = [ "<Shift><Super>3" ];
      move-to-workspace-4 = [ "<Shift><Super>4" ];
      move-to-workspace-5 = [ "<Shift><Super>5" ];
      move-to-workspace-6 = [ "<Shift><Super>6" ];
      move-to-workspace-7 = [ "<Shift><Super>7" ];
      move-to-workspace-8 = [ "<Shift><Super>8" ];
      move-to-workspace-9 = [ "<Shift><Super>9" ];
      move-to-workspace-10 = [ "<Shift><Super>0" ];

      # show desktop
      show-desktop=["<Super>d"];

      # switch between all windows
      switch-windows=["<Alt>Tab"];
      switch-windows-backward=["<Shift><Alt>Tab"];
  
      # disable default behaviour
      switch-applications= [];
      switch-applications-backward= [];
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
      home=["<Super>E"];

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
      command = "wofizilla";
      name = "browser";
    };

    # open email client
    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom2" = {
      binding = "<Super>M";
      command = "wofizilla thunderbird";
      name = "email client";
    };

    # specify app folders
    "org/gnome/desktop/app-folders" = {
      folder-children = [ "Utilities" "Circle" "Programming" "Creation" "Games" ];
    };

    "org/gnome/desktop/app-folders/folders/Utilities" = {
      name = "Utilities";
      categories = [ "X-GNOME-Utilities" ];
      apps = [
        "org.freedesktop.GnomeAbrt.desktop"
        "nm-connection-editor.desktop"
        "org.gnome.baobab.desktop"
        "org.gnome.Connections.desktop"
        "org.gnome.DejaDup.desktop"
        "org.gnome.DiskUtility.desktop"
        "org.gnome.Evince.desktop"
        "org.gnome.FileRoller.desktop"
        "org.gnome.font-viewer.desktop"
        "org.gnome.Loupe.desktop"
        "org.gnome.seahorse.Application.desktop"
        "org.gnome.tweaks.desktop"
        "org.gnome.Usage.desktop"
      ];
    };

    "org/gnome/desktop/app-folders/folders/Circle" = {
      name = "Circle";
      apps = [
        "org.gnome.gitlab.somas.Apostrophe.desktop"
        "com.belmoussaoui.Authenticator.desktop"
        "com.rafaelmardojai.Blanket.desktop"
        "page.kramo.Cartridges.desktop" "io.github.revisto.drum-machine.desktop"
        "io.github.mrvladus.List.desktop"
        "de.haeckerfelix.Fragments.desktop"
        "dev.bragefuglseth.Fretboard.desktop"
        "io.gitlab.adhami3310.Impression.desktop"
      ];
    };

    "org/gnome/desktop/app-folders/folders/Programming" = {
      name = "Programming";
      apps = [
        "android-studio.desktop"
        "org.godotengine.Godot4.desktop"
        "codium.desktop"
        "unityhub.desktop"
      ];
    };

    "org/gnome/desktop/app-folders/folders/Creation" = {
      name = "Creation";
      apps = [
        "blender.desktop"
        "org.freecad.FreeCAD.desktop"
        "gimp.desktop"
        "org.inkscape.Inkscape.desktop"
        "org.kde.krita.desktop"
      ];
    };

    "org/gnome/desktop/app-folders/folders/Games" = {
      name = "Games";
      categories = [ "Game" ];
      excluded-apps = [
        "steam.desktop"
        "page.kramo.Cartridges.desktop"
      ];
    };
  };
}
