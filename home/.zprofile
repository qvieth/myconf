conda activate

# random vocab at shell start
# moved to zshrc (zprofile doesn't start in vim terminal)
alias v='shuf -n1 "$HOME/v/$(
	shuf -n1 -e \
		vMyTOCFL \
		vTOCFL_lv1 \
)" | trans :en -sp'
v 2>/dev/null || ricksay -c $(shuf -n1 -e Rick Rick Rick Morty Beth Jerry Summer)

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
