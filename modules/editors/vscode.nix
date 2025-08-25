{
  pkgs,
  ...
}: {
  programs.vscode = {
  enable = true;
  extensions = with pkgs.nix-vscode-extensions.open-vsx; [
    eamodio.gitlens
    continue.continue
  ];
};
}
