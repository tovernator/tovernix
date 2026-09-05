{
  ...
}:
{
  programs.noctalia.settings.bar.order = [
    "main"
    "sub"
  ];

  programs.noctalia.settings.bar.main = {
    enabled = true;
    position = "top";
    smart_auto_hide = false;
    layer = "top";
    padding = 16;
    thickness = 32;
  };

  programs.noctalia.settings.bar.main = {
    start = [
      "launcher"
      "control-center"
      "keybinds"
      "workspaces"
    ];
    center = [ "clock" ];
    end = [
      "tray"
      "notifications"
      "clipboard"
      "bluetooth"
      "network"
      "volume"
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
    margin_ends = 400;

    padding = 16;
    thickness = 32;
  };

  programs.noctalia.settings.bar.sub = {
    start = [ "procmon" "displays" ];
    center = [ ];
    end = [
      "wallpaper"
      "wallhaven"
    ];
  };

}
