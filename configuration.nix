{ config, pkgs, ... }:

{
  imports = [ <nixos/modules/installer/virtualbox-demo.nix> ];

  environment.systemPackages = with pkgs; [
    emacs
    fish
    git
    guile
    tmux
    vim
  ];
}
