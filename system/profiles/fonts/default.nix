# https://nixos.wiki/wiki/Fonts
{pkgs, ...}: {
  fonts = {
    enableDefaultFonts = true;

    fontDir.enable = true;

    fonts = with pkgs; [
      jetbrains-mono

      noto-fonts
      noto-fonts-extra
      noto-fonts-emoji
      noto-fonts-cjk-sans
      noto-fonts-cjk-serif

      ipafont
      ipaexfont
    ];

    fontconfig = {
      enable = true;
      defaultFonts = {
        serif = ["IPAexMincho" "Noto Serif CJK JP" "Noto Serif"];
        sansSerif = ["IPAexGothic" "Noto Sans CJK JP" "Noto Sans"];
        monospace = ["JetBrains Mono"];
        emoji = ["Noto Color Emoji"];
      };
    };
  };

  environment.systemPackages = with pkgs; [
    gnome.gnome-font-viewer
  ];
}
