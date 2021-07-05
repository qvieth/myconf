# manual

-   [How to speed up shell load while using NVM](https://www.ioannispoulakas.com/2020/02/22/how-to-speed-up-shell-load-while-using-nvm/)
    -   second solution works

## Contents

-   [manual](#manual)
    -   [rbenv](#manual#rbenv)
    -   [neovim nightly](#manual#neovim nightly)
    -   [languagetool for vim - later rename the folder to languagetool](#manual#languagetool for vim - later rename the folder to languagetool)
    -   [wa - wolfram alpha](#manual#wa - wolfram alpha)
    -   [change to zsh manually](#manual#change to zsh manually)
    -   [buttercup](#manual#buttercup)
    -   [docker](#manual#docker)
    -   [NIX](#manual#NIX)
    -   [neuron](#manual#neuron)
    -   [q - run sql directly on csv or tsv files](#manual#q - run sql directly on csv or tsv files)
    -   [neuron zettel, navi](#manual#neuron zettel, navi)

## rbenv

-   `rbenv` is available as a plugin for rbenv
    -   that provides the rbenv install command
    -   or as a standalone program.

```bash
nix-env -i rbenv

# As an rbenv plugin
mkdir -p "$(rbenv root)"/plugins
git clone https://github.com/rbenv/ruby-build.git "$(rbenv root)"/plugins/ruby-build
```

-   [fedora developer - rbenv](https://developer.fedoraproject.org/start/sw/web-app/rails.html)

```sh
rbenv install -l
rbenv install 3.0.1
rbenv global 3.0.1
```

## neovim nightly

```sh
dnf copr enable agriffis/neovim-nightly
dnf install -y neovim python3-neovim
```

## languagetool for vim - later rename the folder to languagetool

```bash
wget https://languagetool.org/download/LanguageTool-stable.zip
unzip LanguageTool-stable.zip
```

## wa - wolfram alpha

```bash
wget https://raw.githubusercontent.com/dmi3/bin/master/wa
wa appid APIKEY
```

## change to zsh manually

-   [running zsh does not change shell ](https://unix.stackexchange.com/questions/39881/running-chsh-does-not-change-shell)

```bash
which zsh
chsh
```

## buttercup

-   [buttercup](https://buttercup.pw/)

## docker

-   [fedora developer - docker](https://developer.fedoraproject.org/tools/docker/docker-installation.html)

## NIX

```bash
# install nix
curl -L https://nixos.org/nix/install | sh

# enable cache(optional)
# If you skip this step, your machine will spend some time compiling the neuron source code.
nix-env -iA cachix -f https://cachix.org/api/v1/install
cachix use srid
```

## neuron

```bash
# install neuron
nix-env -if https://github.com/srid/neuron/archive/master.tar.gz
```

## q - run sql directly on csv or tsv files

-   [github](https://github.com/harelba/q)

## neuron zettel, navi
