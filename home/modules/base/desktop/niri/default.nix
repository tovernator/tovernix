{
  inputs,
  ...
} : {

  home.file.".config/niri" = {
    source = ../configs/niri;
    recursive = true;
  };
  # imports = [./startup.nix ./layout.nix ./binds.nix];
  # programs.niri.config = with inputs.niri.lib.kdl; [
  #   (node "include" "~/.config/niri/noctalia.kdl"[])
  # ];
}
