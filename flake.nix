{
  description = "My C++ static library";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.05";
  outputs = { self, nixpkgs }: {
    packages.x86_64-linux.mylib = nixpkgs.legacyPackages.x86_64-linux.callPackage ./default.nix {};
    defaultPackage.x86_64-linux = self.packages.x86_64-linux.mylib;
  };
}
