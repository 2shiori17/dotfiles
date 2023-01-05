{pkgs, ...}: {
  # https://github.com/nix-community/home-manager/issues/1454
  services.gnome.gnome-keyring.enable = true;

  environment.systemPackages = with pkgs; [
    gnome.seahorse
  ];
}
