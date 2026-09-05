{
  ...
}:
{
  programs.noctalia.settings.plugins = {
    source = [
      {
        name = "official";
        kind = "git";
        location = "https://github.com/noctalia-dev/official-plugins";
        enabled = true;
        auto_update = true;
      }
      {
        name = "community";
        kind = "git";
        location = "https://github.com/noctalia-dev/community-plugins";
        enabled = true;
        auto_update = true;
      }
    ];
    enabled = [
      "noctalia/wallhaven"
      "kenn/keybind-cheatsheet"
    ];
    plugin_settings = {
      "kenn/keybind-cheatsheet" = {
        cheatsheet_position = "auto";
      };
    };
  };

}
