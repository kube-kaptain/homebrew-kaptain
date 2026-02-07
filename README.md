# Homebrew Kaptain

Homebrew tap for Kaptain CLI and user scripts.


## Installation

```bash
brew tap kube-kaptain/kaptain
brew install kaptain
```


## Packages

| Formula                | Description                                           |
|------------------------|-------------------------------------------------------|
| `kaptain`              | Meta package - installs all kaptain-* brew packages   |
| `kaptain-cli`          | Kaptain CLI, ie kaptain and kaptain-help only         |
| `kaptain-encryption`   | Secret management scripts (encrypt/decrypt)           |
| `kaptain-user-scripts` | Same result as kaptain, but in one monolithic package |


## Install individual packages

```bash
brew tap kube-kaptain/kaptain     # Setup common no matter which packages needed
brew install kaptain-cli          # For only the kaptain cli script itself, and help
brew install kaptain-encryption   # For only the secret management encrypt/decrypt scripts
brew install kaptain-user-scripts # For everything in kaptain in one monolithic package
```


## Upgrade

```bash
brew upgrade kaptain
```
