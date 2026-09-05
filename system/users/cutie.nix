{
  pkgs,
  ...
}:
{
  users.users.cutie = {
    isNormalUser = true;
    description = "default user";
    initialPassword = "cutie";

    extraGroups = [
      "networkmanager"
      "wheel"
      "video"
      "input"
      "dialout"
    ];
  };
}
