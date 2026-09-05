{
  ...
}:
{
  home.file.".config/noctalia" = {
    source = ./configs;
    recursive = true;
  };
  programs.noctalia.enable = true;
}
