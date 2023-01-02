{suites, ...}: {
  ### root password is empty by default ###
  imports = suites.base ++ suites.gui ++ [./hardware-configuration.nix];

  nixpkgs.config.allowUnfree = true;

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  services.xserver.videoDrivers = ["nvidia"];
  hardware.opengl.enable = true;
}
