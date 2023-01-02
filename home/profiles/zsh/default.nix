# https://nix-community.github.io/home-manager/options.html#opt-programs.zsh.enable
{
  programs.zsh = {
    enable = true;
    enableAutosuggestions = true;
    enableCompletion = true;
    enableSyntaxHighlighting = true;
    enableVteIntegration = true;
    dotDir = ".config/zsh";
  };
}
