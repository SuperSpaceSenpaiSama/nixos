{
  lib,
  ...
}:

{
  programs.alacritty = {
    enable = true;
    settings = {
      # Font Configuration
      font = {
        size = lib.mkForce 11;
        normal = {
          family = lib.mkForce "JetBrainsMono Nerd Font";
          style = "Regular";
        };

        # Disable ligatures (equivalent to -liga, -dlig, -calt)
        # features = [
        #   "-liga"
        #   "-dlig"
        #   "-calt"
        # ];
      };

      # Window Configuration
      # window = {
      #   decorations = "none"; # Equivalent to window-decoration = false
      #   opacity = 1.0;
      # };

      # Theme Configuration
      # Alacritty does not have a native "theme = 'stylix'" setting.
      # If you use home-manager's stylix module, it will override the colors below.
      # Otherwise, define your colors here:
      # colors = {
      #   primary = {
      #     background = "#1e1e2e";
      #     foreground = "#cdd6f4";
      #   };
      #   # ... rest of palette
      # };
    };
  };
}
