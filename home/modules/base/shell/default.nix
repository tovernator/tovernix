{
  ...
}:
{
  home.file.".config/alacritty" = {
    source = ./configs/alacritty;
    recursive = true;
  };

  programs = {
    fish = {
      enable = true;
      interactiveShellInit = ''
        set fish_greeting # Disable greeting
      '';
    };

    alacritty = {
      enable = true;
      settings = {
        general.import = "$XDG_CONFIG_HOME/alacritty/themes/noctalia.toml";
      };
    };

    eza = {
      enable = true;
      enableFishIntegration = true;
    };

    starship = {
      enable = true;
      enableFishIntegration = true;
      presets = [ "jetpack" ];
    };

    zellij = {
      enable = true;
      enableFishIntegration = true;
      settings = {
        theme = "noctalia";
      };
    };

  };

}
