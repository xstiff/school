#!/bin/bash

if [ "$1" = "--date" ]; then
	echo$(date)
elif [ "$1" = "--logs"]; then
	if [ -z "$2" ]; then
		num_files=100
	else
		num_files="$2"
	fi

	for i in $(seq 1 "$num_files"); do
		filename="log$i.txt"
		echo "$filename" >> "$filename"
		echo "Nazwa pliku: $filename" >> "$filename"
		echo "Nazwa skryptu: $0" >> "$filename"
		echo "Data utworzenia: $(date)" >> "$filename"
	done
elif [ "$1" = "--help" ]; then
	echo "Dostępne opcje:"
	echo " --date -> wyswietla date"
	echo " --logs tworzy 100 plikow"
	echo " --help wyswietla te pomoc"
else
	echo "Nieznana opcja, uzyj komendy --help"
fi
