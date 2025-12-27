{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/release-25.11";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs =
    {
      self,
      flake-utils,
      nixpkgs,
    }:
    flake-utils.lib.eachDefaultSystem (
      system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
      in
      {
        # basically I needed to use packages below and not buildInputs
        # I guess packages makes things available at runtime actually
        devShells.default = pkgs.mkShell {
          buildInputs = [
            pkgs.cmake
            pkgs.coreutils-full
            pkgs.doxygen
            pkgs.libelf
          ];

          packages = [
            pkgs.cmake
            pkgs.llvmPackages_21.libcxxClang
            pkgs.llvmPackages_21.llvm
            pkgs.llvmPackages_21.libllvm
            pkgs.llvmPackages_21.bintools
          ];

        };
      }
    );
}
