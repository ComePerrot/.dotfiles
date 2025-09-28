{pkgs, ...}: {  
  stylix = {
    enable = true;
    autoEnable =false;

    base16Scheme = "${pkgs.base16-schemes}/share/themes/outrun-dark.yaml";
    image = ../assets/background_dark.jpg;
    polarity = "dark";
  };
}
