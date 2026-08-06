{ ... }:

{
  users.users.ludvig = {
    isNormalUser = true;
    description = "Ludvig";
    extraGroups = [
      "wheel"
      "networkmanager"
      "video"
      "audio"
    ];
  };
}
