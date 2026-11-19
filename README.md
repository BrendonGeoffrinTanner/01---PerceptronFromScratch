# Perceptron From Scratch

Environnement reproductible avec Nix (Python, numpy, matplotlib, pytest).

## 1. Installer Nix (une seule fois)

```bash
curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix | sh -s -- install
```

Cet installateur active déjà les flakes.

## 2. Lancer le projet

```bash
git clone https://github.com/BrendonGeoffrinTanner/01---PerceptronFromScratch.git
cd 01---PerceptronFromScratch
nix develop
python src/perceptron.py
```

Quitter l'environnement : `exit`.
