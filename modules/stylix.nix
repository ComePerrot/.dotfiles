{...}: {
  stylix = {
    enable = true;
    autoEnable = false;

    base16Scheme = builtins.fetchurl {
      url = "https://raw.githubusercontent.com/scottmckendry/cyberdream.nvim/main/extras/base16/cyberdream.yaml";
      sha256 = "1bfi479g7v5cz41d2s0lbjlqmfzaah68cj1065zzsqksx3n63znf";
    };

    # Light version
    # base16Scheme = builtins.fetchurl {
    #   url = "https://raw.githubusercontent.com/scottmckendry/cyberdream.nvim/main/extras/base16/cyberdream-light.yaml";
    #   sha256 = "07fpphdx396wi7093dqyhvpmacnradi7xqxxcwp89x9pnwqxjvq3";
    # };

    image = ../assets/background_dark.jpg;
    polarity = "dark";

    targets = {
      gnome.enable = true;
      gtk.enable = true;
      qt.enable = true;
    };
  };
}
