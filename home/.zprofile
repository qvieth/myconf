conda activate

alias rick= ricksay -c $(shuf -n1 -e Rick Rick Rick Morty Beth Jerry Summer)

# random vocab at shell start
alias v='shuf -n1 "$HOME/MyVocab/$(shuf -n1 -e \
		TOCFL_lv1 \
)" | trans zh: :en -sp'
alias vv='shuf -n1 "$HOME/MyFolder/mynote/v/$(shuf -n1 -e \
		vMyVocab.md \
)" | trans zh: :en -sp'

if [ $((RANDOM % 2)) -eq 0 ]; then
	v 2>/dev/null || rick
else
	vv 2>/dev/null || rick
fi

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
