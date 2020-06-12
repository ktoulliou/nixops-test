{ config, pkgs, ... }: {
  imports = [  ];
  time.timeZone = "Europe/Paris";
  i18n.defaultLocale = "fr_FR.UTF-8";
  console = {
    font = "Lat2-Terminus16";
    keyMap = "fr";
  };
  services.openssh = {
    enable = true;
    #permitRootLogin = "yes";
  };
  users.users.root.openssh.authorizedKeys.keyFiles = [ ~/.ssh/id_rsa.pub ];
}

