{ config, pkgs, ... }:

{
environment.systemPackages = with pkgs; [
  nixpkgs-fmt # nix code formatter for nixpkgs
  (vscode-with-extensions.override {
    vscode = vscodium;
    vscodeExtensions = with vscode-extensions; [
      jnoortheen.nix-ide
      redhat.vscode-yaml
      ms-python.python
      ms-python.flake8
      ms-python.black-formatter
      hashicorp.terraform
    ];
  })
];

}
