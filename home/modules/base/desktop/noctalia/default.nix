{
  inputs,
  ...
} : {
  home.file.".config/noctalia" = {
    source = ../configs/noctalia;
    recursive = true;
  }; 
  # imports = [ ./theme.nix ./plugins.nix ./shell.nix ./bar.nix];
  programs.noctalia.enable = true;
}
