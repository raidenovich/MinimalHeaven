{ pkgs, ... }:
{
  services = {
    greetd = {
      enable = true;
        settings = {
          default_session = {
            command = "${pkgs.greetd.tuigreet}/bin/tuigreet --time --cmd /home/vaporsnake/scripts/hyprlaunch";
            user = "greeter";
          };
        };
      };
    # enable mysql for uni stuff
    mysql = {
      enable = true;
      package = pkgs.mysql80;
    };
    openssh.enable = true;
    flatpak.enable = true;
    blueman.enable = true;
    davfs2.enable = true;
    webdav.enable = true;
    ratbagd.enable = true;
    gvfs.enable = true;
    openssh.allowSFTP = true;
    gnome.gnome-keyring.enable = true;
    mullvad-vpn.enable = true;
    gnome.sushi.enable = true;

    # Enable CUPS to print documents.
    printing.enable = true;

    # Enable the X11 windowing system.
    xserver = {
      enable = true;
      layout = "tr";
      xkbVariant = "";
      excludePackages = [pkgs.xterm];
      videoDrivers = ["amdgpu"];
    };
  };
}
