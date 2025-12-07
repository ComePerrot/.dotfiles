{pkgs, ...}: 
let 
  historySize = 100000;
in {
  programs.zsh = {
    enable = true;
    autocd = true;

    history = {
      size = historySize;
      save = historySize;

      append = true;
      expireDuplicatesFirst = true;
      extended = true;
      findNoDups = true;
      ignoreAllDups = true;
      ignoreDups = true;
      ignoreSpace = true;
      saveNoDups = true;
      share = true;
    };

    initContent = ''
      bindkey ';5C' forward-word
      bindkey ';5D' backward-word

      bindkey '^H' backward-kill-word
      bindkey '^[[3~' delete-char
      bindkey '^[[3;5~' kill-word

      # OSC 7 for WezTerm - communicates current dir
      if [[ "$TERM_PROGRAM" == "WezTerm" ]]; then
        precmd() {
          printf "\033]7;file://%s%s\033\\" "$HOST" "$PWD"
        }
      fi
    '';
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
#    bashrcExtra = ''
#      exec zsh
#    '';
  };
}
