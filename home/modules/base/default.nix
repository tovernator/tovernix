{ pkgs, ... }: {

  imports = [
    ./helix
    ./creds
    ./shell
    ./desktop
  ];

  home.packages = with pkgs; [
    nautilus
    nil
    nixd
  ];

  services.udiskie = {
    enable = true;
    automount = true;
  };

  programs.zed-editor.enable = true;
  programs.firefox.enable = true;

}
