#!/bin/bash

function error {
    echo "Usage: $0 <SIZE> [LIST]"
    exit 1
}

function roll_dice {
    NUMBER=""
    for _ in {1..5}; do
        NUMBER="${NUMBER}$((RANDOM % 6 + 1))"
    done
    echo "$NUMBER"
}

SIZE="$1"
LIST="$2"

[[ -z "$SIZE" ]] && error
[[ -z "$LIST" ]] && LIST="en"

if [[ "$LIST" = "en" ]]; then
    WORDLIST="diceware.wordlist.asc"
elif [[ "$LIST" = "eff" ]]; then
    WORDLIST="eff_large_wordlist.txt"
elif [[ "$LIST" = "pt" ]]; then
    WORDLIST="diceware.wordlist.pt.txt"
else
    echo "List '$LIST' not available. Try: 'en', 'eff' or 'pt'."
    error
fi

PHRASE=""

for _ in $(seq "$SIZE"); do
    WORD=$(grep "$(roll_dice)" "$WORDLIST" | awk '{ print $2 }')
    PHRASE="$WORD $PHRASE"
done

echo "$PHRASE"
