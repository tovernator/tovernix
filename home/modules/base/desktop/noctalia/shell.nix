{
 ...
}:
{
  programs.noctalia.settings.shell = {
    panel = {
      clipboard_position = "auto";
      control_center_placement = "floating";
      launcher_placement = "floating";
      launcher_position = "auto";
      open_near_click_clipboard = true;
      open_near_click_control_center = true;
      open_near_click_wallpaper = true;
      polkit_position = "auto";
      wallpaper_placement = "floating";
    };

    session = {
      grid = true;
    };

    launcher = {
      app_grid = true;
    };

    polkit_agent = true;

  };

}
