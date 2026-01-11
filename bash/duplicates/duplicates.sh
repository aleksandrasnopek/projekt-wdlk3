#!/bin/bash

declare -A checksums

for file in files/*; do
    # pomiń jeśli to nie jest plik
    [ -f "$file" ] || continue

    sum=$(md5sum "$file" | cut -d' ' -f1)

    # jeśli suma już istnieje → dodaj plik do listy
    if [[ -n "${checksums[$sum]}" ]]; then
        checksums[$sum]="${checksums[$sum]}"$'\n'"$file"
    else
        checksums[$sum]="$file"
    fi
done

echo "Znalezione duplikaty:"

for sum in "${!checksums[@]}"; do
    # liczymy ile plików ma daną sumę
    count=$(echo "${checksums[$sum]}" | wc -l)

    if [ "$count" -gt 1 ]; then
        echo "-------------------------"
        echo "Suma kontrolna: $sum"
        echo "Pliki:"
        echo "${checksums[$sum]}"

        # pytamy o usunięcie duplikatów (oprócz pierwszego)
        first=true
        while read -r file; do
            if $first; then
                first=false
                continue
            fi

            read -p "Czy usunąć plik $file ? [t/N] " answer
            if [[ "$answer" == "t" || "$answer" == "T" ]]; then
                rm "$file"
                echo "Usunięto $file"
            else
                echo "Pozostawiono $file"
            fi
        done <<< "${checksums[$sum]}"
    fi
done
