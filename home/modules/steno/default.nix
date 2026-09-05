{
  pkgs,
  inputs,
  ...
}:
{
  imports = [ inputs.plover-flake.homeManagerModules.plover ];
  programs.plover = {
    enable = true;
    package = inputs.plover-flake.packages.${pkgs.stdenv.hostPlatform.system}.plover-full;
  };
}
