{ config, pkgs, ... }:

let
  oldPkgs = import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/4021d9d461502792a8233e87047de84aa341370e.tar.gz") { config = {}; };
in {
  environment.systemPackages = [
    oldPkgs.openvpn_24
  ];
}
