{
  ...
}:
{
  programs.noctalia.settings.widget = {
    keybinds = {
      type = "kenn/keybind-cheatsheet:keybinds";
    };

    wallhaven = {
      type = "noctalia/wallhaven:wallhaven";
    };

    network = {
      show_label = false;
    };

    volume = {
      show_label = false;
    };

    tray = {
      drawer = true;
    };

    battery = {
      show_label = false;
    };

    control-center = {
      glyph = "cat";
    };

    procmon = {
      type = "weinguyen/procmon:widget";
    };

    displays = {
      type = "raycursive/niri-displays:bar";
    };

  };
}
