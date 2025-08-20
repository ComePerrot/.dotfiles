{
  pkgs,
  lib,
  imports,
  ...
}: {
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

    gh = {
      enable = true;

      settings = {
        git_protocol = "ssh";
      };
    };
  };
}
