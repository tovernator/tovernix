{
  config,
  ...
} : {
    programs.niri.settings.binds = with config.lib.niri.actions; {
      "Mod+T" = {
        action.spawn = ["alacritty"];        
      };

      "Mod+Minus" = {
        action = switch-preset-column-width-back;
        # hotkey-overlay-title = "Decrease window width";
        repeat = false;
      };
      
      "Mod+Equal" = {
        action = switch-preset-column-width;
        # hotkey-overlay-title = "Increase window width";
        repeat = false;
      };

      "Mod+M" = {
        action = maximize-column;
        repeat = false;
      };
      
      "Mod+Q" = {
        action = close-window;
        # hotkey-overlay-title = "Close window";
        repeat = false;
      };

      
      "Mod+Left" = {
        action = focus-column-left;
        # hotkey-overlay-title = "Move window to workspace above";
        repeat = false;
      };

      "Mod+Right" = {
        action = focus-column-right;
        # hotkey-overlay-title = "Move window to workspace down";
        repeat = false;
      };
      
      
      "Mod+Shift+Up" = {
        action = move-window-to-workspace-up;
        # hotkey-overlay-title = "Move window to workspace above";
        repeat = false;
      };

      "Mod+Shift+Down" = {
        action = move-window-to-workspace-down;
        # hotkey-overlay-title = "Move window to workspace down";
        repeat = false;
      };
      
      "Mod+Shift+Left" = {
        action = move-column-left;
        # hotkey-overlay-title = "Move window to workspace above";
        repeat = false;
      };
      
      "Mod+Shift+Right" = {
        action = move-column-right;
        # hotkey-overlay-title = "Move window to workspace above";
        repeat = false;
      };

      
      
      
      
    };
  }
