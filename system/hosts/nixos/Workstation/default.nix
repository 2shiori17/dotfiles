{
  suites,
  profiles,
  ...
}: {
  ### root password is empty by default ###
  imports =
    suites.base
    ++ suites.dev
    ++ suites.gnome
    ++ [profiles.users.shiori ./hardware-configuration.nix];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  services.xserver.videoDrivers = ["nvidia"];
  hardware.opengl.enable = true;
}
