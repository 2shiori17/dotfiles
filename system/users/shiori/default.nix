{
  hmUsers,
  pkgs,
  ...
}: {
  home-manager.users = {inherit (hmUsers) shiori;};

  users.users.shiori = {
    isNormalUser = true;
    extraGroups = ["wheel" "docker" "vboxusers"];
    shell = pkgs.zsh;
    hashedPassword = "$y$j9T$fJZubI3HN5OduEbPRvz6k1$BD06AfBoz8nuAMVYqqpbW/ua.zo6Y2g8AkL42tpIlQ4";
  };
}
