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

      settings = {
        user = {
          name = "Côme Perrot";
          email = "cperrot@laas.fr";
        };

        core.editor = "nvim";
        github.user = "ComePerrot";
        mergetool.prompt = false;
        rebase.autostash = true;
        pull.rebase = true;
        init.defaultBranch = "main";

        aliases = {
          lg = "lg1";
          lg1 = "lg1-specific --all";
          lg2 = "lg2-specific --all";
          lg3 = "lg3-specific --all";

          lg1-specific = "log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(auto)%d%C(reset)'";
          lg2-specific = "log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(auto)%d%C(reset)%n''          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)'";
          lg3-specific = "log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset) %C(bold cyan)(committed: %cD)%C(reset) %C(auto)%d%C(reset)%n''          %C(white)%s%C(reset)%n''          %C(dim white)- %an <%ae> %C(reset) %C(dim white)(committer: %cn <%ce>)%C(reset)'    lg3-specific = log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset) %C(bold cyan)(committed: %cD)%C(reset) %C(auto)%d%C(reset)%n''          %C(white)%s%C(reset)%n''          %C(dim white)- %an <%ae> %C(reset) %C(dim white)(committer: %cn <%ce>)%C(reset)'";
        };
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
