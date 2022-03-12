conda activate

# random vocab at shell start
# shuf -n 1 $HOME/$(shuf -n1 -e vAWL vTOCFL) | trans :en -sp
alias v='shuf -n 1 "$HOME/v/$(
	shuf -n1 -e \
		vTOCFL_lv1
)" | trans :en -sp'
v
# ricksay -c $(shuf -n1 -e Rick Rick Rick Morty Beth Jerry Summer)
# shuf -n1 $HOME/v
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
