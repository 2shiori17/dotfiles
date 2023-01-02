{
  config,
  lib,
  pkgs,
  self,
  ...
}: {
  imports = [./common.nix];

  # This is just a representation of the nix default
  nix.systemFeatures = ["nixos-test" "benchmark" "big-parallel" "kvm"];

  environment = {
    systemPackages = with pkgs; [
      vscode
      google-chrome
    ];
    shellAliases = {
      # fix nixos-option for flake compat
      nixos-option = "nixos-option -I nixpkgs=${self}/lib/compat";
    };
  };

  nix = {
    # Improve nix store disk usage
    autoOptimiseStore = true;
    optimise.automatic = true;
    allowedUsers = ["@wheel"];
  };

  # Enable sound
  sound.enable = true;
  hardware.pulseaudio.enable = true;
}
