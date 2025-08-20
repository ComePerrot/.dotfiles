{
  pkgs,
  lib,
  imports,
  ...
}:
{
  home.packages = with pkgs; [
    git-lfs
  ];

  programs = {
    git = {
      enable = true;
      lfs.enable = true;

      userEmail = "cperrot@laas.fr";
      userName = "Côme Perrot";

      extraConfig = {
        core.editor = "nvim";
        github.user = "ComePerrot";
        mergetool.prompt = false;
        pull.rebase = true;
        init.defaultBranch = "main";
      };
    };

    # git-lfs.enable = true;

    gh = {
      enable = true;

      settings = {
        git_protocol = "ssh";
      };
    };
  };
}