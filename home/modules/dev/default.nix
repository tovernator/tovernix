{
  pkgs,
  ...
}:
{
  home.packages = with pkgs; [
    nil
    nixd
  ];

  programs.git.enable = true;
  programs.lazygit.enable = true;
}
