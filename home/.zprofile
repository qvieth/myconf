# conda activate

# random vocab at shell start
alias v='shuf -n1 "$HOME/MyVocab/$(shuf -n1 -e \
		Remember-Tradional-Hanzi-1 \
)" | cat'
alias vv='shuf -n1 "$HOME/MyFolder/mynote/v/$(shuf -n1 -e \
		vMyVocab.md \
)" | cat'

v
# if [ $((RANDOM % 2)) -eq 0 ]; then
# 	v 2>/dev/null || rick
# else
# 	vv 2>/dev/null || rick
# fi

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
