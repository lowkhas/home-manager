# home.nix
{ lib, pkgs, ... }:
{
  home = {
    packages = with pkgs; [
      nix-prefetch-git

      tmux
      
      git
      git-cliff

      zsh
      oh-my-zsh

      neofetch
      nnn

      # Utils
      eza
      fzf

      # Network
      dnsutils
      nmap

      # Misc
      tree
      gnupg
      cowsay

      firefox
      docker
  
      # Kube tools
      kubectl
      argocd
      k9s
    ];

    # These info must match your real info
    username = "lowkhas";
    homeDirectory = "/home/lowkhas";

    stateVersion = "24.05";
  };

   imports = [
     ./modules/zsh.nix
     ./modules/tmux.nix
     ./modules/neovim.nix
   ];

  programs = {
    home-manager = {
      enable = true;
    };

    git = {
      enable = true;

      userName = "Lowkhas";
      userEmail = "lowkhas@lwkhs.com";
    };

    firefox = {

    };

  };

  # virtualisation = {
  #   docker = {
  #     enable = true;
  #     enableOnBoot = true;

  #     rootless = {
  #       enable = true;
  #     };
  #   };
  # };
}
