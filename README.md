# Projekt WDLK 3 – Automatyzacja zadań w systemie Linux

## Autor
Aleksandra Snopek

---

## Cel repozytorium

Celem repozytorium jest realizacja projektu zaliczeniowego z przedmiotu **WDLK**.
Projekt obejmuje:

- pracę z systemem kontroli wersji Git i repozytorium GitHub,
- tworzenie i rozwijanie skryptów Bash,
- organizację pracy z użyciem gałęzi i Pull Requestów,
- przygotowanie dokumentacji w systemie LaTeX.

---

## Struktura repozytorium
projekt-wdlk3/
├── bash/
│ ├── classification/
│ │ ├── inbox/
│ │ ├── classified/
│ │ └── classification.sh
│ └── duplicates/
│ ├── files/
│ └── duplicates.sh
├── latex/
│ ├── script/
│ │ └── script_wdlk.pdf
│ └── instruction/
│ └── instruction.pdf
├── .gitignore
└── README.md


---

## Opis katalogów

### 📁 bash/

Katalog `bash/` zawiera skrypty Bash przygotowane w ramach projektu:

- **classification/**  
  Skrypt `classification.sh` służy do klasyfikowania plików według rozszerzeń.  
  Skrypt przenosi pliki (`mv`) z katalogu wejściowego do katalogu wyjściowego
  (domyślnie `classified/`).  
  Katalog `inbox/` przeznaczony jest na pliki wejściowe.

- **duplicates/**  
  Skrypt `duplicates.sh` wyszukuje zduplikowane pliki i umożliwia ich
  interaktywne usuwanie.  
  Katalog `files/` służy do przechowywania plików testowych.

---

### 📁 latex/

Katalog `latex/` zawiera dokumentację projektu przygotowaną w systemie LaTeX.

- **latex/script/**  
  `script_wdlk.pdf` – skompilowany dokument PDF zawierający treści laboratoriów (lab2–lab6).

- **latex/instruction/**  
  `instruction.pdf` – instrukcja obsługi aplikacji GitHub Desktop wraz ze
  screenshotami dokumentującymi kolejne etapy pracy.

---

## Jak korzystać z repozytorium

### Uruchamianie skryptów Bash

1. Otwórz terminal (np. Git Bash).
2. Przejdź do katalogu z wybranym skryptem, np.:

```bash
cd bash/classification


Nadaj prawa do uruchomienia (jeśli wymagane):

chmod +x classification.sh


Uruchom skrypt:

./classification.sh inbox classified


Analogicznie dla skryptu wyszukującego duplikaty:

cd bash/duplicates
chmod +x duplicates.sh
./duplicates.sh files

Kompilowanie dokumentów LaTeX

Dokumenty LaTeX zostały już skompilowane do plików PDF i znajdują się
w katalogu latex/.

Aby skompilować je ponownie:

Otwórz projekt w Overleaf lub lokalnym środowisku LaTeX.

Uruchom kompilację pliku main.tex.

Wygenerowany plik PDF pojawi się w odpowiednim katalogu.








