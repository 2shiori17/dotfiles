# https://nix-community.github.io/home-manager/options.html#opt-programs.zsh.enable
{self, ...}: {
  programs.zsh = {
    enable = true;
    enableAutosuggestions = true;
    enableCompletion = true;
    enableSyntaxHighlighting = true;
    enableVteIntegration = true;
    dotDir = ".config/zsh";
    shellAliases = {
      # fix nixos-option for flake compat
      nixos-option = "nixos-option -I nixpkgs=${self}/lib/compat";
    };
  };
}
