{
  pkgs,
  lib,
  imports,
  ...
}:
{
  programs.eza = {
    enable = true;
    enableZshIntegration = true;
  };
}