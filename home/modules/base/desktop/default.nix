{
  pkgs,
  ...
}:
{
  imports = [
    ./noctalia
    ./niri
  ];

  home.packages = with pkgs; [ nautilus ];

  services.udiskie = {
    enable = true;
    automount = true;
  };

}
