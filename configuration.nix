{ config, pkgs, ... }:

{
  imports = [ <nixos/modules/installer/virtualbox-demo.nix> ];
  
  environment.systemPackages = with pkgs;
    let
      haskPkgs = with haskellPackages [
        ghc
        mtl
        network
        cabal-install
      ]
    in [
      emacs
      fish
      git
      tmux
      vim
      maven
      jdk
    ] ++ haskPkgs;
}
