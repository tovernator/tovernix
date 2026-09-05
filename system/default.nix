{
  pkgs,
  stateVersion,
  hostname,
  ...
}:
{
  imports = [
    ./modules/base
    ./modules/network
    ./modules/plover 
    ./users/cutie.nix 
  ];

  nix.settings = {
    experimental-features = [
      "nix-command"
      "flakes"
    ];
  };

  networking.hostName = hostname;

  environment.systemPackages = with pkgs; [
    helix
    curl
    git
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
