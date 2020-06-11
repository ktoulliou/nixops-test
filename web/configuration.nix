{ config, pkgs, ... }: {
  imports = [
    ./hardware-configuration.nix
  ];

  boot.loader.grub.device = "/dev/sda";
  networking.hostName = "nixos-web"; 
  time.timeZone = "Europe/Paris";
  i18n.defaultLocale = "fr_FR.UTF-8";
  console = {
    font = "Lat2-Terminus16";
    keyMap = "fr";
  };
  services.openssh = {
    enable = true;
    permitRootLogin = "yes";
  };
  networking.firewall.enable = true;
  networking.firewall.allowedTCPPorts = [ 80 ];
  services.nginx = {
    enable = true;
    virtualHosts."nixos-web" = {
      root = "/var/www/nixos-web";
    };
  };
}

