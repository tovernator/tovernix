{ stateVersion, ... }: {
  imports = [
    ../modules/base
    ../modules/social
    ../modules/steno
    ../modules/dev
    ../modules/firefox
  ];

  home.username = "cutie";
  home.homeDirectory = "/home/cutie";
  home.stateVersion = stateVersion;

  programs.home-manager.enable = true;
}
