{
  pkgs,
  inputs,
  ...
}:
# let
#   mcsrPkgs = inputs.mcsr-nixos.packages.${pkgs.stdenv.hostPlatform.system};
# in
{
  imports = [ ./mcsr ];

  environment.systemPackages = [
    # mcsrPkgs.ninjabrain-bot

    (pkgs.prismlauncher.override {
      additionalLibs = [
        pkgs.jemalloc
        pkgs.libxtst
        pkgs.libxkbcommon
        pkgs.libxt
        pkgs.libxinerama
        pkgs.glfw3-minecraft
      ];

      jdks = [
        # programs/java.nix
        # avoids having to re-detect nix store paths every time
        "/opt/temurin-25"
        "/opt/temurin-21"
        "/opt/temurin-17"
        "/opt/temurin-8"
      ];
    })

  ];
}
