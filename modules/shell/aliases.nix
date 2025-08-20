{
  pkgs,
  lib,
  imports,
  ...
}:
{
  home.shellAliases = {
    c="clear" ;
    grep="grep --color=auto" ;
    mv="mv -i" ;
    rm="rm -Iv" ;
    df="df -h" ;
    du="du -h -d 1";
  };
}