{ config, pkgs, ... }: {
  imports = [
    ./hardware-configuration.nix
  ];

  boot.loader.grub.device = "/dev/sda";
  networking.hostName = "nixos-nixops"; # A modifier
  time.timeZone = "Europe/Paris";
  i18n.defaultLocale = "fr_FR.UTF-8";
  console = {
    font = "Lat2-Terminus16";
    keyMap = "fr";
  };
  services.sshd.enable = true;
  environment.systemPackages = with pkgs; [
    wget git
  ];

}

