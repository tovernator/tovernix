{
  ...
}:
{
  programs.noctalia.settings.bar.main = {
    enabled = true;
    position = "top";
    smart_auto_hide = false;
    layer = "top";
    padding = 16;
    thickness = 32;
  };

  programs.noctalia.settings.bar.order = [
    "main"
    "sub"
  ];

  programs.noctalia.settings.bar.main = {
    start = [
      "launcher"
      "control-center"
      "keybinds"
      "workspaces"
    ];
    center = [ ];
    end = [
      "tray"
      "notifications"
      "clipboard"
      "bluetooth"
      "network"
      "sound"
      "battery"
      "session"
    ];
  };

  programs.noctalia.settings.bar.sub = {
    enabled = true;
    position = "bottom";
    smart_auto_hide = true;
    layer = "top";
    reserve_space = false;

    padding = 16;
    thickness = 32;
  };

  programs.noctalia.settings.bar.sub = {
    start = [ ];
    center = [ ];
    end = [
      "wallpaper"
      "wallhaven"
    ];
  };

}
