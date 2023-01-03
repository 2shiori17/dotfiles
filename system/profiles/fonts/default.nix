# https://nixos.wiki/wiki/Fonts
{pkgs, ...}: {
  fonts = {
    enableDefaultFonts = true;
    fonts = with pkgs; [
      jetbrains-mono

      noto-fonts
      noto-fonts-extra
      noto-fonts-emoji
      noto-fonts-cjk-sans
      noto-fonts-cjk-serif
    ];

    fontconfig = {
      defaultFonts = {
        serif = ["Noto Serif CJK JP" "Noto Serif"];
        sansSerif = ["Noto Sans CJK JP" "Noto Sans"];
        monospace = ["JetBrains Mono"];
        emoji = ["Noto Color Emoji"];
      };
    };
  };

  environment.systemPackages = with pkgs; [
    gnome.gnome-font-viewer
  ];
}
