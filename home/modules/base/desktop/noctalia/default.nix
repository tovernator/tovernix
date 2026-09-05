{
  ...
}:
{

  imports = [
    ./shell.nix
    ./theme.nix
    ./plugins.nix
    ./bar.nix
    ./widgets.nix
  ];

  programs.noctalia.settings.audio.enable_sounds = true;
  programs.noctalia.enable = true;
}
