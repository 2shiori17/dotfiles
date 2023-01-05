{
  config,
  lib,
  pkgs,
  ...
}: {
  imports = [./common.nix];

  # This is just a representation of the nix default
  nix.systemFeatures = ["nixos-test" "benchmark" "big-parallel" "kvm"];

  nix = {
    # Improve nix store disk usage
    autoOptimiseStore = true;
    optimise.automatic = true;
    allowedUsers = ["@wheel"];
  };
}
