{
  pkgs,
  lib,
  imports,
  ...
}:
{
  home.shellAliases = {
    c="clear" ;
    l="ls -lh --color=auto --group-directories-first" ;
    ls="ls -h --color=auto --group-directories-first" ;
    la="ls -lah --color=auto --group-directories-first" ;
    grep="grep --color=auto" ;
    mv="mv -i" ;
    rm="rm -Iv" ;
    df="df -h" ;
    du="du -h -d 1";
  };
}