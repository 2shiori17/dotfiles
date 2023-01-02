# https://nix-community.github.io/home-manager/options.html#opt-xsession.windowManager.xmonad.enable
{pkgs, ...}: {
  xsession.enable = true;

  xsession.windowManager.xmonad = {
    enable = true;
    enableContribAndExtras = true;
    config = ./xmonad.hs;
  };

  home.packages = with pkgs; [
    dmenu
  ];
}
