{ pkgs,lib, ... }: {

  imports = [
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

  programs.zed-editor = {
    enable = true;
    extensions = [ "nix" "toml" "rust" ];
    userSettings = {
      theme = {
        mode = "system";
        dark = "Noctalia Dark Transparent";
        light = "Noctalia Light Transparent";
      };
    };
  };
}
