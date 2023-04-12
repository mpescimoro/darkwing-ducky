# darkwing-ducky

Questo script utilizza la funzione curl per accedere al contenuto del file "quotes" su questa repository e lo separa in un array di frasi. Quindi, seleziona casualmente una frase dall'array e la stampa.

## Come funziona:
Il comando curl è utilizzato per ottenere il contenuto della pagina web specificata e il parametro -s è utilizzato per non visualizzare la barra di avanzamento del download.

Il comando IFS viene utilizzato per definire il separatore di campo come una nuova riga (in questo caso, il carattere \n). Quindi, si utilizza il comando read per leggere il contenuto del file come una variabile, fino alla fine del documento (-d ''), assegnando ad ogni riga un singolo elemento dell'array e rispettando il ritorno a capo (-r). Infine, l'operatore <<< è utilizzato per fornire il contenuto alla variabile in input.

Infine ((RANDOM \% \${\#QUOTES_ARRAY[\@]})) serve per generare un indice casuale nell'intervallo tra 0 e il numero di citazioni nell'array. Quindi, utilizzando questo indice, il comando echo mostra a schermo la citazione selezionata casualmente dall'array.

## Utilizzo:
Per garantire il funzionamento dello script, assicurati che il file sia eseguibile. Il seguente comando serve per garantire l'esecuzione: 
```
chmod +x quotes.sh
```
Assicurati solo di risolvere le dipendenze!

## Altro:

Se vuoi divertirti un pò, prova a dare il seguente comando:
```
./quotes.sh | cowsay -f duck | lolcat
```
Puoi anche aggiungerlo nel file .bashrc in modo da avere un messaggio ad ogni nuovo avvio del terminale!
