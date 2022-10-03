# manual stuffs
- run bash config file name as ubuntu sh filename in ranger doesn't work
- [How to speed up shell load while using NVM](https://www.ioannispoulakas.com/2020/02/22/how-to-speed-up-shell-load-while-using-nvm/)
  - second solution works
  - best solution : use fnm

## magic mouse

```
echo 50 | sudo tee /sys/module/hid_magicmouse/parameters/scroll_speed
echo N | sudo tee /sys/module/hid_magicmouse/parameters/scroll_acceleration
```

[adjusting scroll speed of an magic mouse](https://neilzone.co.uk/2021/09/adjusting-the-scroll-speed-of-an-apple-magic-mouse-on-debian-11)

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
