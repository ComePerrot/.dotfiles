{
  pkgs,
  ...
}: {
  programs.vscode = {
  enable = true;
  profiles.default.extensions = with pkgs.nix-vscode-extensions.open-vsx; [
    eamodio.gitlens
    continue.continue
  ];
};
}
