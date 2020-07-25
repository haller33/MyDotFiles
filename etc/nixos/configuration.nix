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
  

  # Supposedly better for the SSD.
  fileSystems."/".options = [ "noatime" "nodiratime" "discard" ];

  # Use the GRUB 2 boot loader.
  boot.loader.grub.enable = true;
  boot.loader.grub.version = 2;
  boot.loader.grub.device = "nodev";
  boot.loader.grub.efiSupport = true;
  boot.loader.efi.canTouchEfiVariables = true;

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

  # Set your time zone.
  time.timeZone = "America/Fortaleza";

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
     zsh git ranger screen dmenu htop iw usbutils st qemu ncdu tmux radare2 qemu gdb nitrogen
     vim emacs calibre arduino gimp vim okular xaos

     nodejs ghc guile racket cabal2nix cabal-install

     firefox nmap netcat wget tor wpa_supplicant bind opera openvpn
     keepassxc 
     vlc scrot

     logmein-hamachi

     openjdk
     
     # oracle-instantclient odpic

     # Haskell packages for XMonad
     haskellPackages.xmobar
     haskellPackages.xmonad
     haskellPackages.xmonad-contrib
     haskellPackages.xmonad-extras
     stack
  ];

  
  # Haskell hoogle Copy
  
  services.hoogle.enable = true;

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

  # services.xserver.libinput.enable = false;
  # services.xserver.synaptics.enable = true;

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
  # services.openssh.enable = true;
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
  nixpkgs.config.pulseaudio = true;
  hardware.pulseaudio.enable = true;
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
  #  services.xserver = {
  #    desktopManager = {
  #      default = "xfce";
  #      xterm.enable = false;
  #      xfce.enable = true;
  #    };
  # }

  # Enable touchpad support.
  services.xserver.libinput.enable = true;


  services.printing.enable = true;
  # Show the manual on virtual console 8 :
  services.nixosManual.showManual = true;

  # Enable the KDE Desktop Environment.
  # services.xserver.displayManager.sddm.enable = true;
  # services.xserver.desktopManager.plasma5.enable = true;

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.synbian = {
    isNormalUser = true;
    extraGroups = [ "wheel" ]; # Enable ‘sudo’ for the user.
  };

  # This value determines the NixOS release with which your system is to be
  # compatible, in order to avoid breaking some software such as database
  # servers. You should change this only after NixOS release notes say you
  # should.
  system.stateVersion = "19.09"; # Did you read the comment?

}

