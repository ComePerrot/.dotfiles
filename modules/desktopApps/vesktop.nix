{
  pkgs,
  lib,
  imports,
  ...
}: {
  programs.vesktop = {
    enable = false;
    settings = {
      discordBranch = "stable";
      minimizeToTray = false;
      staticTitle = true;
      enableSplashScreen = false;
      arRPC = false;
    };
  };
}
