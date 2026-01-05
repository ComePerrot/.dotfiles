{
  pkgs,
  config,
  ...
}: {
  programs.vscode = {
    enable = true;
    profiles.default.extensions = 
      (with pkgs.vscode-extensions; [
      # AI assistant
      continue.continue # Apache License 2.0
      # Utils
      eamodio.gitlens # MIT License for base files
      oderwat.indent-rainbow # MIT License
      # Spell check
      ltex-plus.vscode-ltex-plus # Mozilla Public License 2.0
      # Python
      # ms-python.debugpy # MIT License
      charliermarsh.ruff # MIT License
      # Nix
      jnoortheen.nix-ide # MIT License
      # Toml
      tamasfe.even-better-toml # MIT License
    ])
    ++
    (with pkgs.nix-vscode-extensions.open-vsx; [
      astral-sh.ty # MIT License
    ]);
  };

  xdg.configFile."Code/User/settings.json".source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/.dotfiles/config/vscode_settings.json";

  stylix.targets.vscode.enable = false;
}
