{
  pkgs,
  config,
  ...
}: {
  programs.vscode = {
  enable = false;
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
    # Toml
    tamasfe.even-better-toml
  ];
};

  xdg.configFile."Code/User/settings.json".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/.dotfiles/config/vscode_settings.json";

  stylix.targets.vscode.enable = false;

}
