inputs:
let
  # Pass flake inputs to overlay so we can use the sources pinned in flake.lock
  # instead of having to keep sha256 hashes in each package for src
  inherit inputs;
in
self: super: {
  # codeium = super.callPackage ./packages/codeium.nix { };
  jetbrains-toolbox = super.callPackage ./packages/jetbrains-toolbox.nix { };
}