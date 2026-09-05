{
  pkgs,
  stateVersion,
  hostname,
  ...
}:
{
  imports = [
    ./locale.nix
    ./users/cutie.nix
    ./desktop.nix
    ./boot.nix
    ./firewall.nix
    ./misc.nix
  ];

  nix.settings = {
    experimental-features = [
      "nix-command"
      "flakes"
    ];
  };

  hardware.bluetooth.enable = true;
  networking.networkmanager.enable = true;
  networking.hostName = hostname;

  services = {
    pipewire = {
      enable = true;
      alsa.enable = true;
      alsa.support32Bit = true;
      pulse.enable = true;
      jack.enable = true;
    };
    gnome.gnome-keyring.enable = true;
    pulseaudio.enable = false;
    udisks2.enable = true;

    tuned.enable = true;
    upower.enable = true;

  };

  security.polkit.enable = true;

  environment.systemPackages = with pkgs; [
    helix
    curl
    git
    libsecret
  ];

  programs.bash = {
    interactiveShellInit = ''
      if [[ $(${pkgs.procps}/bin/ps --no-header --pid=$PPID --format=comm) != "fish" && -z ''${BASH_EXECUTION_STRING} ]]
      then
        shopt -q login_shell && LOGIN_OPTION='--login' || LOGIN_OPTION=""
        exec ${pkgs.fish}/bin/fish $LOGIN_OPTION
      fi
    '';
  };
  system.stateVersion = stateVersion;

}
