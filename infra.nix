{
  web = {
    deployment.targetHost = "nixos-web";
    imports = [ ./web/configuration.nix
              ];
  };
#  nas = {
#    deployment.targetHost = "nixos-nas";
#    imports = [ ./nas/configuration.nix
#              ];
#  };
  pc1 = {
    deployment.targetHost = "nixos-pc1";
    imports = [ ./pc1/configuration.nix
              ];
  };
  pc2 = {
    deployment.targetHost = "nixos-pc2";
    imports = [ ./pc2/configuration.nix
              ];
  };
  network.description = "Infra test Nixos";
}
