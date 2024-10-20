# neovim.nix
{ lib, pkgs, ... }:
{
  programs = {
    neovim = {
      enable = true;
      defaultEditor = true;
      viAlias = true;
      vimAlias = true;
      vimdiffAlias = true;
      extraConfig = ''
        set tabstop=2
        set shiftwidth=2
        set expandtab
      '';

      plugins = with pkgs.vimPlugins; [ 
        lazy-nvim
        nvim-cmp
      ];
    };
  };
}
