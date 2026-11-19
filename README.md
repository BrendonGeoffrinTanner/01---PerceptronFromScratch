# Perceptron From Scratch

Environnement reproductible avec Nix (Python, numpy, matplotlib, pytest).

## 1. Installer Nix (une seule fois)

```bash
curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix | sh -s -- install
```

Cet installateur active déjà les flakes. Rouvre ensuite ton terminal.

> Déjà installé via l'installateur officiel ? Ajoute
> `experimental-features = nix-command flakes` dans `~/.config/nix/nix.conf`.

## 2. Lancer le projet

```bash
git clone <url-du-depot> 01---PerceptronFromScratch
cd 01---PerceptronFromScratch
nix develop
python src/perceptron.py
```

Tests : `pytest`. Quitter l'environnement : `exit`.

## Notes

- Fichiers non suivis par Git = invisibles pour Nix. Après création locale : `git add flake.nix flake.lock src/`.
- Supporté : Linux, WSL2. Pour macOS, ajoute `"aarch64-darwin"` (Apple Silicon) ou `"x86_64-darwin"` à `systems` dans `flake.nix`.
- Ajouter une librairie : l'ajouter dans `flake.nix` (ex. `ps.scipy`), jamais via `pip`.
