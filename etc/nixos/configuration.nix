#  Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, lib, nixpkgs, pkgs, callPackage, virtualization,... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
      ./hosts.nix
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

  boot.initrd.luks.devices = 
    {
      eos = {
        device = "/dev/disk/by-uuid/e6ac9502-6698-4046-8e2e-47a964c807ef";
        preLVM = true;
        allowDiscards = true;
      };
    };
  
  # prevent shutdown by press Power Button
  powerManagement.enable = true;
  services.logind.lidSwitch = "suspend-then-hibernate";
  services.logind.extraConfig = "HandlePowerKey=ignore";
  # services.logind.extraConfig = "IdleAction=ignore";
  # don’t shutdown when power button is short-pressed
      
  networking.hostName = "morpheus"; # Define your hostname.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  # The global useDHCP flag is deprecated, therefore explicitly set to false here.
  # Per-interface useDHCP will be mandatory in the future, so this generated config
  # replicates the default behaviour.
  networking.useDHCP = false;
  networking.interfaces.enp1s0f1.useDHCP = true;
  networking.interfaces.wlp2s0.useDHCP = true;

  ### because we added a new hosts.nix file
  ## 
  # networking.extraHosts =
  # ''
  #    127.0.0.2 other-localhost
  #    10.0.0.1  server
  #    

  #'';


  # system.autoUpgrade.channel = "https://nixos.org/channels/nixos-20.09/";
  system.autoUpgrade.channel = "https://nixos.org/channels/nixos-unstable";

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
  nix.gc.automatic = false;
  # nix.gc.options = "--delete-older-than 8d";

  # Set your time zone.
  time.timeZone = "America/Fortaleza";

  nixpkgs.config.st.patches = [
    /etc/nixos/patches/st.alpha.diff
    /etc/nixos/patches/st.scrollback.diff
    /etc/nixos/patches/st.no-bold-colors.diff
    /etc/nixos/patches/st.anysize.diff
  ];

  # set binary caches for nixos
  nix.trustedBinaryCaches = ["http://localhost:8088/" "https://cache.nixos.org/"];

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [

     doas zsh keybase man-pages git ranger screen dmenu htop iw qemu ncdu tmux st gdb nitrogen wirelesstools qemu xorg.xkill links ark nixfmt screenkey slop gvfs android-file-transfer # usbutils

     compton

     docker docker-compose 

     sbcl ecl # nasm

     emacs calibre vim okular xaos vim vscode # arduino 

     nodejs ghc guile binutils-unwrapped chez go racket clojure leiningen dotnet-sdk_3 scala sbt # msbuild

     palemoon firefox opera nmap netcat wget tor torsocks wpa_supplicant bind openvpn kotatogram-desktop
     keepassxc 
     vlc scrot feh # gimp

     monero-gui
     
     libreoffice

     lxqt.pavucontrol-qt

     # gcc llvm clang cmake qt5.full qt5.qmake qtcreator qt5.qtbase  qt5.qttools qt5.qtwebview 
     
     # logmein-hamachi

     # openjdk

     appimage-run # nano-wallet 

     nethack nethack-x11

     msf aircrack-ng crunch sshpass busybox ht gdb lldb pev radare2 wineWowPackages.stable steam-run upx

     hyperledger-fabric

     nix-serve nix-binary-cache cachix nix-index


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


  # List services that you want to enable:

  # programs.zsh.enable = true;

  services = {

    # enable powersave
    tlp.enable = true;
    tlp.extraConfig = ''
      CPU_SCALING_GOVERNOR_ON_AC=performance
      CPU_SCALING_GOVERNOR_ON_BAT=powersave
      CPU_MAX_PERF_ON_AC=100
      CPU_MAX_PERF_ON_BAT=40
    '';
     
    # set nix-serve options
    nix-serve.port = 8088;
    nix-serve.enable = true;
    nix-serve.extraParams = ''
     
      storeDir = "/mnt/nix-cache",
      stateDir = "/mnt/nix-var"
    
    '';
     
     
    # teamviewer - off if not needed
    # teamviewer.enable = true;

    # Haskell hoogle Copy
    hoogle.enable = true;
    hoogle.packages = hp: with hp; [
       text lens tonalude stack statistics parsec hspec
    ];

    # Yggdrasil Service
    # yggdrasil.configFile = "/home/synbian/yggdrasil.conf";
    yggdrasil.enable = true;
    yggdrasil.config = {
   
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

    # hamachi
    logmein-hamachi.enable = false;

    # keybase
    kbfs.enable = true;
    keybase.enable = true;

    # flatpak
    flatpak.enable = true;

    # VOIP OVER CELL
    # murmur.enable = true;

    # Emacs Daemon
    emacs.enable = true;

    # TOR
    tor.enable = true;
    # tor.tsocks.enable = true;
    # tor.torsocks.enable = true;
    tor.client.enable = true;
    
    # bluetooth
    blueman.enable = false;

    # gnunet
    gnunet.enable = true;

    # Enable the OpenSSH daemon.
    openssh.enable = true;
    
    # Enable CUPS to print documents.
    # printing.enable = true;
    # Fix headphone white-noise on Dell XPS 13.
    acpid.enable = true;
    acpid.handlers.fixHeadphoneNoise = {
      event = "jack/headphone HEADPHONE plug";
      action = "${pkgs.alsaUtils}/bin/amixer -c0 sset 'Headphone Mic Boost' 10dB";
    };
    
    
    xserver = {
    
      # Enable the X11 windowing system.
      enable = true;
      layout = "br";
      desktopManager.xterm.enable=false;
      # xkbOptions = "eurosign:e";

      # EXWM  
      # xserver.windowManager.exwm.enable = true;

      # Xmonad window manager
      windowManager.xmonad = {
        enable = true;
        enableContribAndExtras = true;
      };
      wacom.enable = true;

      # config for dwm
      # desktopManager.default="none";
      # windowManager.dwm.enable = true;

      # olds xfce4 interface
      # desktopManager = {
      # default = "xfce";
      # xfce.enable = true;
      # };
      # newer ?
      # displayManager.defaultSession = "xfce";
        
      # };
    
      # Enable the KDE Desktop Environment.
      # displayManager.sddm.enable = true;
      # desktopManager.plasma5.enable = true;


      # Enable touchpad support.
      # TODO :: solve Scrol in touchpad.
      libinput.naturalScrolling = false;
      libinput.enable = true;
      libinput.middleEmulation = true;
      libinput.tapping = true;
  
      # libinput.enable = false;
      # synaptics.enable = true;
    };

    # Show the manual on virtual console 8 :
    nixosManual.showManual = true;

    # DNS
    # bind.enable = true;
    dnscrypt-proxy2.enable = true;

    dnscrypt-proxy2 = {
      # enable = true;
      settings = {
        ipv6_servers = true;
        require_dnssec = true;
        
        sources.public-resolvers = {
        urls = [
          "https://raw.githubusercontent.com/DNSCrypt/dnscrypt-resolvers/master/v3/public-resolvers.md"
          "https://download.dnscrypt.info/resolvers-list/v3/public-resolvers.md"
        ];
        cache_file = "public-resolvers.md";
        minisign_key = "RWQf6LRCGA9i53mlYecO4IzT51TGPpvWucNSCh1CBM0QTaLn73Y7GFO3";
      };
      
      # You can choose a specific set of servers
      # from https://github.com/DNSCrypt/dnscrypt-resolvers/blob/master/v3/public-resolvers.md
      # server_names = [ ... ];
      };
    };
    
  };
  
  xdg.portal.enable = true;


  # bluetooth
  hardware.bluetooth.enable = false;
  hardware.bluetooth.powerOnBoot = false;

  ## problems in swith to 20.09 channel
  # Virtual Box / Virtualization
  # virtualbox
  # virtualisation.virtualbox.enable = true;
  # virtualisation.virtualbox.host.enable = true;
  # virtualisation.virtualbox.host.enable = true;
  # virtualisation.virtualbox.guest.enable = true;
  # Docker
  virtualisation.virtualbox.host.enable = true;
  
  virtualisation.docker.enable = true;
  # ## Realy/maybe not work...
  # virtualisation.virtualbox.host.enableExtensionPack = true;
  ## not surt Effect
  # nixpkgs.config.virtualbox.enableExtensionPack = true;
  

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  programs.mtr.enable = true;
  programs.gnupg.agent = { enable = true; enableSSHSupport = true; };
  users.extraUsers.synbian = {
    shell = pkgs.zsh;
  };

  # networking.
  # Or disable the firewall altogether.
  networking = {

    nameservers = [ "127.0.0.1" "::1" ];
    # resolvconf.enable = false;
   
    # Open ports in the firewall.
    firewall.enable = true; 
    # firewall.allowedTCPPorts = [ ... ];
    
    # If using dhcpcd:
    dhcpcd.extraConfig = "nohook resolv.conf";
    # If using NetworkManager:
    networkmanager.dns = "none";
  };
  
  # Enable sound.  
  sound = {
    enable = true;
    extraConfig = ''
      defaults.ctl.card 0
    '';
  };
  
  ## Not working with mic but working with firefox...
  # enable mic with amixer
  # nixpkgs.config.pulseaudio = true;
  #
  hardware.pulseaudio = {
    
     enable = true;
     package = pkgs.pulseaudioFull;
     support32Bit = true;
  };
    
  # Unfree packages
  nixpkgs.config = {

    allowUnfree = true;
    # oraclejdk.accept_license = true;
  };


#  security.doas.extraRule = [
#      # Allow execution of any command by any user in group doas, requiring
#      # a password and keeping any previously-defined environment variables.
#      { groups = [ "doas" ]; noPass = false; keepEnv = true; }
#      
#      # Allow execution of "/home/root/secret.sh" by user `backup` OR user
#      # `database` OR any member of the group with GID `1006`, without a
#      # password.
#      { users = [ "backup" "database" ]; groups = [ 1006 ];
#      cmd = "/home/root/secret.sh"; noPass = true; }
#      
#      # Allow any member of group `bar` to run `/home/baz/cmd1.sh` as user
#      # `foo` with argument `hello-doas`.
#      { groups = [ "bar" ]; runAs = "foo";
#      cmd = "/home/baz/cmd1.sh"; args = [ "hello-doas" ]; }
#      
#      # Allow any member of group `bar` to run `/home/baz/cmd2.sh` as user
#      # `foo` with no arguments.
#      { groups = [ "bar" ]; runAs = "foo";
#      cmd = "/home/baz/cmd2.sh"; args = [ ]; }
#      
#      # Allow user `abusers` to execute "nano" and unset the value of
#      # SSH_AUTH_SOCK, override the value of ALPHA to 1, and inherit the
#      # value of BETA from the current environment.
#      { users = [ "abusers" ]; cmd = "nano";
#      setEnv = [ "-SSH_AUTH_SOCK" "ALPHA=1" "BETA" ]; }
#    ];
#

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.synbian = {
    
    isNormalUser = true;
    extraGroups = [ "vboxusers" "wheel" "audio" "docker" ]; # Enable VMBox, Docker and ‘sudo’ for the user.
  };
  users.extraGroups.vboxusers.members = [ "user-with-access-to-virtualbox" ];
  
  # This value determines the NixOS release from which the default # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fin  e and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man   configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "20.09"; # Did you read the comment? 
}

