{
  ...
}: {
    imports = [./firewall.nix];
    
    hardware.bluetooth.enable = true;
    networking.networkmanager.enable = true;
  }
