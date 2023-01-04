# services.xserver.desktopManager.gnome
{
  services.xserver = {
    enable = true;

    desktopManager.gnome = {
      enable = true;
    };

    displayManager.gdm = {
      enable = true;
    };
  };
}
