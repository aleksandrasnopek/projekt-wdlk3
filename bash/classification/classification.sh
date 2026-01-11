#!/bin/bash

# Sprawdzenie argumentów
if [ -z "$1" ]; then
  echo "Użycie: $0 <katalog_wejściowy> [katalog_wyjściowy]"
  exit 1
fi

# Katalog wejściowy
INDIR="$1"

# Katalog wyjściowy (domyślnie 'classified')
OUTDIR="${2:-classified}"

# Sprawdzenie czy katalog wejściowy istnieje
if [ ! -d "$INDIR" ]; then
  echo "Błąd: katalog wejściowy nie istnieje."
  exit 1
fi

# Utworzenie katalogu wyjściowego jeśli nie istnieje
mkdir -p "$OUTDIR"

# Przenoszenie plików według rozszerzeń
for FILE in "$INDIR"/*; do
  if [ -f "$FILE" ]; then
    EXT="${FILE##*.}"
    TARGET_DIR="$OUTDIR/$EXT"

    mkdir -p "$TARGET_DIR"
    mv "$FILE" "$TARGET_DIR/"
  fi
done

echo "Klasyfikacja zakończona. Pliki przeniesione do katalogu '$OUTDIR'."
