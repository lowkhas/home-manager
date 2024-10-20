# tmux.nix
{ lib, pkgs, ... }:
{
  programs = {
    tmux = {
      enable = true;
      clock24 = true;
      historyLimit = 5000;
    };
  };
}
