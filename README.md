Diceware
========

The `diceware.sh` script can be used to generate [Diceware][diceware] passphrases in a chosen size from different lists.

## Example

    $ ./diceware.sh
    Usage: ./diceware.sh <SIZE> [LIST]
    $ ./diceware.sh 6
    amort dizzy kinky pro mont tensor
    $ ./diceware.sh 6 pt
    carola fraco ng sonso polaco troia

## Lists

The [English][en] (`en`) and [Portuguese][pt] (`pt`) word lists were fetched from [The Diceware Passphrase Home Page][diceware].

The [Electronic Frontier Foundation English][eff] (`eff`) word list was obtained at the [EFF Dice-Generated Passphrases][eff-dice] page.


[diceware]: http://world.std.com/~reinhold/diceware.html
[eff-dice]: https://www.eff.org/dice
[eff]: eff_large_wordlist.txt
[en]: diceware.wordlist.asc
[pt]: diceware.wordlist.pt.txt
