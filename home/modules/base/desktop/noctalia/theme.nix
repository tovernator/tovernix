{
...
}:
{
  programs.noctalia.settings.theme = {
    mode = "dark";
    source = "wallpaper";
    wallpaper_scheme = "faithful";
    templates = {
      builtin_ids = [ "alacritty" "gtk3" "gtk4" "helix" "niri" "qt" "starship" ];
      community_ids = [ "bat" "zellij" ];
    };
  };

}
