{
  pkgs,
  config,
  ...
}: {
  programs.vscode = {
  enable = true;
  profiles.default.extensions = with pkgs.nix-vscode-extensions.open-vsx; [
    # Utils
    # continue.continue
    eamodio.gitlens
    oderwat.indent-rainbow
    # Spell check
    ltex-plus.vscode-ltex-plus
    # Python
    ms-python.python
    ms-python.debugpy
    charliermarsh.ruff
    # Nix
    jnoortheen.nix-ide
  ];
};

  xdg.configFile."Code/User/settings.json".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/.dotfiles/config/vscode_settings.json";
}
