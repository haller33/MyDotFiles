# shell.nix
{ pkgs ? import <nixpkgs> {} }:
  pkgs.mkShell {
    buildInputs = [
                    pkgs.qt5.full
                    pkgs.qtcreator
                  ];
}
