{
  pkgs,
  lib,
  imports,
  ...
}:
{
  programs.firefox = {
    enable = true;
    languagePacks = [ "en-US" "fr" ];
    profiles = {
      default = {
        id = 0;
        name = "default";
        isDefault = true;
        settings = {
          "browser.startup.homepage" = "about:newtab";
          "browser.search.defaultenginename" = "DuckDuckGo";
          "browser.search.order.1" = "DuckDuckGo";
        };
        search = {
          force = true;
          default = "ddg";
          order = [ "ddg" "google" ];
        };
        extensions = with pkgs.nur.repos.rycee.firefox-addons; [
          keepassxc-browser
          ghostery
          ublock-origin
        #  vimium
        #];
      };
    };
  };
}
