# https://nix-community.github.io/home-manager/options.html#opt-programs.xmobar.enable
{
  programs.xmobar = {
    enable = true;
    extraConfig = builtins.readFile ./xmobar.hs;
  };
}
