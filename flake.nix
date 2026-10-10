{ description = "Environnement reproductible du projet Perceptron";

inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

outputs = { self, nixpkgs }: let systems = [ "x86_64-linux" "aarch64-linux" ];

forAllSystems = nixpkgs.lib.genAttrs systems; in { devShells = forAllSystems (system: let pkgs = import nixpkgs { inherit system; };

python = pkgs.python3.withPackages (ps: [ ps.numpy ps.matplotlib ps.pytest ]); in { default = pkgs.mkShell { packages = [ python pkgs.git ]; }; }); }; }
