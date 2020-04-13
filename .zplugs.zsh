#!/usr/bin/env zsh
# this allows zplug to update itself on `zplug update`
zplug 'zplug/zplug', hook-build:'zplug --self-manage'

zplug "robbyrussell/oh-my-zsh", use:"lib/{clipboard,completion,directories,history,termsupport,key-bindings}.zsh"

#### ZSH MAGIC
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-completions"
zplug "zdharma/fast-syntax-highlighting", defer:2
# zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "zsh-users/zsh-history-substring-search", defer:3

zplug "peterhurford/git-it-on.zsh"

for plugin in docker fasd docker-compose extract command-not-found fd gcloud git-auto-fetch gpg-agent helm kubectl ubuntu web-search last-working-dir
do
    zplug "plugins/$plugin", from:oh-my-zsh
done
export GIT_AUTO_FETCH_INTERVAL=1800
zplug denysdovhan/spaceship-prompt, use:spaceship.zsh, from:github, as:theme

zplug "MichaelAquilina/zsh-you-should-use"
export YSU_HARDCORE=1

zplug "MichaelAquilina/git-commands", \
    as:command, \
    use:git-clean-branches

zplug "hlissner/zsh-autopair", defer:2

zplug "Tarrasch/zsh-bd"
zplug "jimeh/zsh-peco-history", defer:2
zplug "brymck/print-alias"
zplug "laggardkernel/zsh-thefuck"