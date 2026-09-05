{
...
} : {
  programs.niri.settings.layout = {
    gaps = 11;
    center-focused-column = "never";
    default-column-width = { proportion = 0.5; };
    focus-ring = {
      width = 2;
    };
    border = {
      enable = false;
    };
    shadow = {
      enable = true;
      softness = 30;
      spread = 5;
      offset.x = 0;
      offset.y = 5;
    };

  };
}
