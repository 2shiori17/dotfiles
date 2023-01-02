# https://nix-community.github.io/home-manager/options.html#opt-programs.direnv.enable
{
  programs.direnv = {
    enable = true;
    nix-direnv = {
      enable = true;
    };
  };
}
