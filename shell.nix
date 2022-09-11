with import <nixpkgs> {};

pkgs.mkShell {
  nativeBuildInputs = with pkgs; [
    bikeshed
  ];

  hardeningDisable = [ "all" ];
}
