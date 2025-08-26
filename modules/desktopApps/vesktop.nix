{
  pkgs,
  lib,
  imports,
  ...
}: {
  programs.vesktop = {
    enable = true;
    settings = {
      discordBranch = "stable";
      minimizeToTray = false;
      staticTitle = true;
      enableSplashScreen = false;
      arRPC = false;
    };
  };
}
