# Homebrew Tap

Homebrew [tap](https://docs.brew.sh/Taps) repository for installing my tools.

## Available Formulae

* [`docker-pussh`](https://github.com/psviderski/unregistry) — Docker CLI plugin to push images to remote Docker daemons
  via SSH without a registry.
* [`uncloud`](https://github.com/psviderski/uncloud) — A lightweight tool for deploying and managing containerised
  applications across a network of Docker hosts.

## Installation

```bash
# Install uncloud CLI
brew install psviderski/tap/uncloud
```

Or add the tap repo and install the formula:

```bash
# Add the tap
brew tap psviderski/tap

# Install docker-pussh CLI
brew install docker-pussh

# Install uncloud CLI
brew install uncloud
```

