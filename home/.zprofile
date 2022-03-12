conda activate

# random vocab at shell start
# shuf -n1 $HOME/$(shuf -n1 -e vAWL vTOCFL) | trans :en -sp
# ricksay -c $(shuf -n1 -e Rick Rick Rick Morty Beth Jerry Summer)
# shuf -n1 $HOME/v
alias v='shuf -n1 "$HOME/v/$(
	shuf -n1 -e \
		vMyTOCFL \
		vTOCFL_lv1 \
)" | trans :en -sp'
v
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
