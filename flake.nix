{
  description = "My Emacs configuration";
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nixpkgs.inputs.flake-utils.url = "github:numtide/flake-utils";
    emacs-flake.url = "github:georg41980/emacs-config";
  };
  outputs = { self, nixpkgs, emacs-flake }: {
    packages.x86_64-linux = emacs-flake.packages.x86_64-linux;
    packages.aarch64-linux = emacs-flake.packages.aarch64-linux;
    defaultPackage.x86_64-linux = emacs-flake.defaultPackage.x86_64-linux;
    defaultPackage.aarch64-linux = emacs-flake.defaultPackage.aarch64-linux;
  };
}
