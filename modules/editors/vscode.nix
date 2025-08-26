{
  pkgs,
  ...
}: {
  programs.vscode = {
  enable = true;
  profiles.default.extensions = with pkgs.nix-vscode-extensions.open-vsx; [
    continue.continue
    eamodio.gitlens
    oderwat.indent-rainbow
  ];
};
}
