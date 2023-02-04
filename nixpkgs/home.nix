{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "sleroq";
  home.homeDirectory = "/home/sleroq";

  programs.git = {
    enable = true;
    userName = "Sleroq";
    userEmail = "sleroq@sleroq.link";
  };

  fonts.fontconfig.enable = true;

  home.packages = with pkgs; [
    tdesktop
    discord
    schildichat-desktop
    keepassxc
    flameshot
    chromium
    exodus
    krita
    obs-studio
    mpv
    networkmanagerapplet
    networkmanager-openvpn
    qbittorrent
    safeeyes

    skypeforlinux
    remmina
    nomachine-client
    rustdesk

    kitty
    thefuck
    gocryptfs
    stow
    xclip
    onefetch
    bpytop
    bore
    ngrok

    libsForQt5.ark
    libsForQt5.filelight
    libsForQt5.kdeconnect-kde

    p7zip
    unzip

    (nerdfonts.override { fonts = [ "FiraCode" "DroidSansMono" ]; })
    noto-fonts
    noto-fonts-extra
    noto-fonts-cjk-sans
    font-awesome
  ];

  services.syncthing.enable = true;

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "22.11";

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
  nixpkgs.config.allowUnfreePredicate = (_: true);
}