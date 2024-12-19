{ inputs, ... }:

{
  imports = [ inputs.xremap.nixosModules.default ];

  services.xremap = {
    userName = "valyn";
    config.modmap = [
      {
        name = "rebind capslock key to escape";
        remap.capslock = "esc";
      }
    ];
  };
}
