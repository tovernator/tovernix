{ stateVersion, ... }: {
  imports = [
    ../modules/base
    ../modules/social
    ../modules/steno
    ../modules/dev
  ];

  home.username = "cutie";
  home.homeDirectory = "/home/cutie";
  home.stateVersion = stateVersion;

  programs.home-manager.enable = true;
}
