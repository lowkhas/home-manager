# zsh.nix
{ lib, pkgs, ... }:
{
  programs = {
    zsh = {
      enable = true;
      enableCompletion = true;
      plugins = [
        {
          name = "zsh-autosuggestions";
          src = pkgs.fetchFromGitHub {
            owner = "zsh-users";
            repo = "zsh-autosuggestions";
            rev = "v0.7.0";
            sha256 = "1g3pij5qn2j7v7jjac2a63lxd97mcsgw6xq6k5p7835q9fjiid98";
          };
        }
/*        {
          name = "zsh-syntax-highlighting";
          src = pkgs.fetchFromGitHub {
            owner = "zsh-users";
            repo = "zsh-syntax-highlighting";
            rev = "0.8.0";
            sha256 = "0f482llznpkdg3kv92mjq53djpi4023bdmq06lk1qh05gnp2qg46";
          };
        }*/
      ];
      oh-my-zsh = {
        enable = true;
        theme = "xiong-chiamiov-plus";
        plugins = [
          "docker-compose"
          "git"
          "zsh-autocomplete"
        #  "nix-zsh-completions"
          "sudo"
          "kubectl"
        ];
      };
    };

    fzf = {
      enable = true;
      enableZshIntegration = true;
    };
  };
}
