# home.nix
{ lib, pkgs, ... }:
{
  home = {
    packages = with pkgs; [
      hello
    ];

    # These info must match your real info
    username = "lowkhas";
    homeDirectory = "/home/lowkhas";

    stateVersion = "24.11"
  };
}
