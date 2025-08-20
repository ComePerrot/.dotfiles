{
  pkgs,
  ...
}:
{
  programs.zsh = {
    enable = true;
    autocd = true;
  };

  programs.zsh.antidote = {
    enable = true;
    plugins = [
      "getantidote/use-omz"
      "ohmyzsh/ohmyzsh path:plugins/git"
      "zsh-users/zsh-autosuggestions"
      "MichaelAquilina/zsh-you-should-use"
    ];
  };

  # Need to activate bash to automatically run Zsh in new session
  programs.bash = {
    enable = true;
    bashrcExtra = ''
      exec zsh
    '';
  };
  
}