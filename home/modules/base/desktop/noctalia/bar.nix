{
  ...
}:
{
  programs.noctalia.settings.order = ["main"];
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
      "audio"
      "bluetooth"
      "network"
      "battery"
      "session"
    ];

    enabled = true;
    position = "top";
    smart_auto_hide = false;
    layer = "top";
    monitor = "";
    margin_ends = 300;
    padding = 16;
    thickness = 32;

    widget = {
      keybinds.type = "kenn/keybind-cheatsheet:keybinds";
      network.show_label = false;
      control-center.glypth = "cat";
      battery.show_label = false;
    };

  };
}
