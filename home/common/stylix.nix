{
  pkgs,
  inputs,
  ...
}: {
  stylix = {
    enable = true;
    autoEnable = false;

    polarity = "dark";
    image = ../../assets/rocca-pietore.jpg;
    base16Scheme = "${pkgs.base16-schemes}/share/themes/ayu-dark.yaml";
  };
}
