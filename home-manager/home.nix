{ config, pkgs, inputs, ... }:

{
  home.username = "suraj";
  home.homeDirectory = "/home/suraj";

  home.stateVersion = "24.05";

  home.packages = with pkgs; [
    kitty
    networkmanagerapplet
    pavucontrol
    tmux
    nitrogen
    fira-code-nerdfont
    luarocks
    gcc
    ripgrep
    xclip
  ];

  home.file = {
    ".config/nvim" = {
      source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/dotfiles/nvim";
      recursive = true;
    };
    ".config/i3" = {
      source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/dotfiles/i3";
      recursive = true;
    };
    ".tmux.conf" = {
      source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/dotfiles/tmux.conf";
    };
    ".zshrc" = {
      source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/dotfiles/zshrc";
    };
    ".config/starship.toml" = {
      source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/dotfiles/starship.toml";
    };
    ".config/kitty" = {
      source = config.lib.file.mkOutOfStoreSymlink "${config.home.homeDirectory}/dotfiles/kitty";
      recursive = true;
    };
  };

  home.sessionVariables = {
    EDITOR = "nvim";
  };

  programs = {
    home-manager.enable = true;

    git = {
      enable = true;
      userName = "surajboniwal";
      userEmail = "surajboniwal18@gmail.com";
    };

    zsh = {
      enable = true;
      autosuggestion.enable = true;
      enableCompletion = true;
      oh-my-zsh = {
        enable = true;
        plugins = [ ];
      };
    };

    firefox = {
      enable = true;
      # profiles.default.extensions = with inputs.firefox-addons.packages.${pkgs.system}; [
      #   bitwarden
      # ];
    };

    starship = {
      enable = true;

      settings = { };
    };

    neovim = {
      enable = true;
      viAlias = true;
      vimAlias = true;
      extraPackages = with pkgs; [
        nixpkgs-fmt
      ];
    };

  };

}
