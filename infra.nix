{
  web = {
    deployment.targetHost = "nixos-web";
    imports = [ ./web/configuration.nix
              ];
  };
  pc1 = {
    deployment.targetHost = "nixos-pc1";
    imports = [ ./pc1/configuration.nix
              ];
  };
  network.description = "my network";
}
