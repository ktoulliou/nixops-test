{ config, pkgs, ... }: {
  imports = [
    ./hardware-configuration.nix
    ../common.nix
  ];

  boot.loader.grub.device = "/dev/sda";
  networking.hostName = "nixos-web"; 
  networking.firewall.enable = true;
  networking.firewall.allowedTCPPorts = [ 80 ];
  services.nginx = {
    enable = true;
    virtualHosts."nixos-web" = {
      root = "/var/www/nixos-web";
    };
  };
}

