# https://nix-community.github.io/home-manager/options.html#opt-services.trayer.enable
{
  services.trayer = {
    enable = true;
    settings = {
      edge = "top";
      align = "right";
      SetDockType = true;
      SetPartialStrut = true;
      expand = true;
      width = 10;
      height = 18;
      transparent = true;
      tint = "0x5f5f5f";
    };
  };
}
