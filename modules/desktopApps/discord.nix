{...}: {
  programs.discord = {
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
