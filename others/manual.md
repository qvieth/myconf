# manual stuffs

- [How to speed up shell load while using NVM](https://www.ioannispoulakas.com/2020/02/22/how-to-speed-up-shell-load-while-using-nvm/)
  - second solution works
  - best solution : use fnm

## wa - wolfram alpha

```bash
wget https://raw.githubusercontent.com/dmi3/bin/master/wa
wa appid APIKEY
```

## change to zsh manually

- [running zsh does not change shell ](https://unix.stackexchange.com/questions/39881/running-chsh-does-not-change-shell)

```bash
which zsh
chsh
```

## docker

- [fedora developer - docker](https://developer.fedoraproject.org/tools/docker/docker-installation.html)

## NIX

```bash
# install nix
curl -L https://nixos.org/nix/install | sh

# enable cache(optional)
# If you skip this step, your machine will spend some time compiling the neuron source code.
nix-env -iA cachix -f https://cachix.org/api/v1/install
cachix use srid
```