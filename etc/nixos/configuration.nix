#  Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, lib, nixpkgs, pkgs, callPackage, virtualization,... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
    ];

  # Use the systemd-boot EFI boot loader.
  # boot.loader.systemd-boot.enable = true;
  # boot.loader.efi.canTouchEfiVariables = true;

  # https://bugzilla.kernel.org/show_bug.cgi?id=110941
  boot.kernelParams = [
    "intel_pstate=no_hwp,console=ttyUSB,115200n8"
  ];

  boot.kernelPackages = pkgs.linuxPackagesFor pkgs.linux_latest;

  # Supposedly better for the SSD.
  fileSystems."/".options = [ "noatime" "nodiratime" "discard" ];

  # Use the GRUB 2 boot loader.
  boot.loader.grub.enable = true;
  boot.loader.grub.version = 2;
  boot.loader.grub.device = "nodev";
  boot.loader.grub.efiSupport = true;
  boot.loader.efi.canTouchEfiVariables = true;

  boot.kernel.sysctl = {
    "net.core.default_qdisc"             = "fq";
    "net.ipv4.tcp_congestion_control"    = "bbr";
    "net.ipv6.conf.all.disable_ipv6"     = 0;
    # net.ipv4.tcp_allowed_congestion_control = reno bbr
    # net.ipv4.tcp_available_congestion_control = reno bbr
    # net.ipv4.tcp_congestion_control = bbr
  };

  # Grub menu is painted really slowly on HiDPI, so we lower the
  # resolution. Unfortunately, scaling to 1280x720 (keeping aspect
  # ratio) doesn't seem to work, so we just pick another low one.
  boot.loader.grub.gfxmodeEfi = "1024x768";

  boot.initrd.luks.devices = [
    {
      name = "root";
      device = "/dev/disk/by-uuid/b405dc2e-cce8-46ff-b092-24e8b475c5a1";
      preLVM = true;
      allowDiscards = true;
    }
  ];

  networking.hostName = "morpheus"; # Define your hostname.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  # The global useDHCP flag is deprecated, therefore explicitly set to false here.
  # Per-interface useDHCP will be mandatory in the future, so this generated config
  # replicates the default behaviour.
  networking.useDHCP = false;
  networking.interfaces.enp1s0f1.useDHCP = true;
  networking.interfaces.wlp2s0.useDHCP = true;

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Select internationalisation properties.
  # i18n = {
  #   consoleFont = "Lat2-Terminus16";
  #   consoleKeyMap = "us";
  #   defaultLocale = "en_US.UTF-8";
  # };

  # configure Garbage Collector
  nix.gc.automatic = true;
  nix.gc.options = "--delete-older-than 8d";

  # Set your time zone.
  time.timeZone = "America/Fortaleza";

  nixpkgs.config.st.patches = [
    /etc/nixos/patches/st.alpha.diff
    /etc/nixos/patches/st.scrollback.diff
    /etc/nixos/patches/st.no-bold-colors.diff
    /etc/nixos/patches/st.anysize.diff
#    /etc/nixos/patches/st.solarized.diff
  ];
  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [

     zsh git ranger screen dmenu htop iw qemu ncdu tmux st gdb nitrogen wirelesstools qemu # usbutils

     compton

     docker docker-compose

     sbcl ecl # nasm

     emacs calibre vim okular xaos vim # arduino 

     nodejs ghc guile binutils-unwrapped # racket msbuild

     firefox nmap netcat wget tor wpa_supplicant bind opera openvpn
     keepassxc 
     vlc scrot feh # gimp

     lxqt.pavucontrol-qt 
     
     # logmein-hamachi

     # openjdk

     nethack nethack-x11

     aircrack-ng crunch sshpass busybox ht gdb lldb pev radare2 wineWowPackages.stable steam-run upx # msf


     yggdrasil chirp

     # teamviewer mumble # obs-studio
     
     # oracle-instantclient odpic

     # Haskell packages for XMonad
     haskellPackages.xmobar
     haskellPackages.xmonad
     haskellPackages.xmonad-contrib
     haskellPackages.xmonad-extras
     stack

     ## break reference
     # virtualbox 
     ## broken
     # audacity
     ## cause of so mutch problems.
     # pulseaudio
  ];

  # teamviewer - off if not needed
  # services.teamviewer.enable = true;
  
  # Haskell hoogle Copy

  services.hoogle.enable = true;
  services.hoogle.packages = hp: with hp; [
    text lens tonalude stack statistics parsec hspec
  ];


  # Yggdrasil Service
  services.yggdrasil.enable = true;

  services.yggdrasil.config = {
   
     # Listen = [ "tcp://0.0.0.0:xxxxx" ];
   
     Peers = [ "tcp://45.231.133.188:58301"
               "tcp://[2804:49fc::ffff:ffff:5b5:e8be]:58301"
	       "tcp://aa.bb.cc.dd:eeeee"
     	       "tcp://[aaaa:bbbb:cccc:dddd::eeee]:fffff"
	       "tcp://67.205.187.55:19103"
	       "tls://67.205.187.55:19102"

    	       "tls://[2604:a880:400:d0::16e5:7001]:19102"
    	       "tcp://198.58.100.240:44478"
               "tcp://[2600:3c00::f03c:91ff:feae:3efa]:44478"
	

     ];
  };
  
  # services.yggdrasil.configFile = "/home/synbian/yggdrasil.conf";

  # services.logmein-hamachi.enable = false;

  xdg.portal.enable = true;
  services.flatpak.enable = true;
  # DNS
  services.bind.enable = true;
  # services.dnscrypt-proxy.enable = true;
  virtualisation.docker.enable = true;
  hardware.bluetooth.enable = false;
  services.blueman.enable = false;
  hardware.bluetooth.powerOnBoot = false;


  ## problems in swith to 20.03 channel
  # Virtual Box / Virtualization
  virtualisation.virtualbox.host.enable = true;
  ## services.virtualbox.enable = true;
  # virtualisation.virtualbox.host.enable = true;
  # virtualisation.virtualbox.guest.enable = true;
  # ## Realy/maybe not work...
  # virtualisation.virtualbox.host.enableExtensionPack = true;
  ## not surt Effect
  # nixpkgs.config.virtualbox.enableExtensionPack = true;
  
  # VOIP OVER CELL
  # services.murmur.enable = true;

  # Emacs Daemon
  services.emacs.enable = true;

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  programs.mtr.enable = true;
  programs.gnupg.agent = { enable = true; enableSSHSupport = true; };
  users.extraUsers.synbian = {
    shell = pkgs.zsh;
  };

  # List services that you want to enable:

  # Enable the OpenSSH daemon.
  services.openssh.enable = true;
  programs.zsh.enable = true;

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  networking.firewall.enable = true;

  # Enable CUPS to print documents.
  # services.printing.enable = true;

  # Enable sound.
  
  sound.enable = true;

  sound.extraConfig = ''
    defaults.ctl.card 0
  '';
  
  ## Not working with mic but working with firefox...
  # nixpkgs.config.pulseaudio = true;
  #
  hardware.pulseaudio = {
    
     enable = true;
     package = pkgs.pulseaudioFull;
     support32Bit = true;
  };
  #
  # Fix headphone white-noise on Dell XPS 13.
  services.acpid.enable = true;
  services.acpid.handlers.fixHeadphoneNoise = {
    event = "jack/headphone HEADPHONE plug";
    action = "${pkgs.alsaUtils}/bin/amixer -c0 sset 'Headphone Mic Boost' 10dB";
  };
  
  
  # Unfree packages
  nixpkgs.config = {

    allowUnfree = true;
    # oraclejdk.accept_license = true;
  };

  # Enable the X11 windowing system.
  services.xserver.enable = true;
  services.xserver.layout = "br";
  # services.xserver.xkbOptions = "eurosign:e";


  # EXWM
  
  # services.xserver.windowManager.exwm.enable = true;

  # Xmonad window manager
  services.xserver = {
  
  windowManager.xmonad = {
      enable = true;
      enableContribAndExtras = true;
    };
  
    wacom.enable = true;
  };



  # config for dwm
  # services.xserver = {
  #   desktopManager.xterm.enable=false;
  #   # desktopManager.default="none";
  #   windowManager.dwm.enable = true;
  # };

  # olds xfce4 interface
  # services.xserver = {
  #     desktopManager = {
  #       default = "xfce";
  #       xterm.enable = false;
  #       xfce.enable = true;
  #     };
  # };

  # Enable touchpad support. TODO :: solve Scrol in touchpad.
  services.xserver.libinput.naturalScrolling = false;
  services.xserver.libinput.enable = true;
  services.xserver.libinput.middleEmulation = true;
  services.xserver.libinput.tapping = true;

  # services.xserver.libinput.enable = false;
  # services.xserver.synaptics.enable = true;


  # Show the manual on virtual console 8 :
  services.nixosManual.showManual = true;

  # Enable the KDE Desktop Environment.
  # services.xserver.displayManager.sddm.enable = true;
  # services.xserver.desktopManager.plasma5.enable = true;

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.synbian = {
    isNormalUser = true;
    extraGroups = [ "vboxusers" "wheel" "audio" "docker" ]; # Enable VMBox and ‘sudo’ for the user.
  };

  # This value determines the NixOS release from which the default # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fin  e and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man   configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "20.03"; # Did you read the comment? 
}

