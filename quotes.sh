QUOTES=$(curl -s https://raw.githubusercontent.com/mpescimoro/darkwing-ducky/main/quotes)
IFS=$'\n' read -d '' -r -a QUOTES_ARRAY <<< "$QUOTES"
random_index=$((RANDOM % ${#QUOTES_ARRAY[@]}))echo "${QUOTES_ARRAY[$random_index]}"
