# \# Projekt WDLK 3 – Automatyzacja zadań w systemie Linux

# 

# \## Autor

# Aleksandra Snopek

# 

# ---

# 

# \## Cel repozytorium

# Celem repozytorium jest realizacja projektu zaliczeniowego z przedmiotu \*\*WDLK\*\*.  

# Projekt miał na celu zapoznanie się z:

# \- systemem kontroli wersji Git,

# \- pracą z repozytorium GitHub,

# \- tworzeniem i rozwijaniem skryptów Bash,

# \- przygotowaniem dokumentacji w systemie LaTeX,

# \- pracą na gałęziach oraz z Pull Requestami.

# 

# ---

# 

# \## Struktura repozytorium

# 

projekt-wdlk3/

├── bash/

│ ├── duplicates.sh

│ └── classify.sh

├── latex/

│ ├── script/

│ │ └── script\_wdlk.pdf

│ └── instruction/

│ └── instruction.pdf

├── .gitignore

└── README.md



---



\## Opis katalogów



\### 📁 bash/

Katalog `bash/` zawiera skrypty Bash przygotowane w ramach projektu:

\- \*\*duplicates.sh\*\* – skrypt służący do wyszukiwania zduplikowanych plików,

\- \*\*classify.sh\*\* – skrypt klasyfikujący pliki według określonych kryteriów.



Skrypty były rozwijane etapami i zapisywane w repozytorium z użyciem commitów Git.



---



\### 📁 latex/

Katalog `latex/` zawiera dokumentację przygotowaną w systemie LaTeX.



\#### 📁 latex/script/

\- \*\*script\_wdlk.pdf\*\* – skompilowany dokument PDF zawierający treści laboratoriów (lab2–lab6).



\#### 📁 latex/instruction/

\- \*\*instruction.pdf\*\* – instrukcja obsługi aplikacji GitHub Desktop, zawierająca:

&nbsp; - instalację programu,

&nbsp; - logowanie do konta GitHub,

&nbsp; - klonowanie repozytorium,

&nbsp; - tworzenie commitów,

&nbsp; - pracę z gałęziami,

&nbsp; - tworzenie Pull Requestów.



Instrukcja zawiera wymagane screenshoty dokumentujące kolejne etapy pracy.



---



\## Jak korzystać z zawartości repozytorium



\### Uruchamianie skryptów Bash

1\. Otwórz terminal (np. Git Bash).

2\. Przejdź do katalogu `bash/`:

&nbsp;  ```bash

&nbsp;  cd bash

Nadaj prawa do uruchomienia skryptów (jeśli wymagane):

chmod +x duplicates.sh
chmod +x classify.sh
linia testowa PR


Uruchom wybrany skrypt:

./duplicates.sh
./classify.sh
Kompilowanie dokumentów LaTeX

Dokumenty LaTeX zostały już skompilowane do plików PDF i znajdują się w katalogu latex/.

Aby skompilować je ponownie:

1.Otwórz projekt w Overleaf lub użyj lokalnej instalacji LaTeX.

2.Uruchom kompilację pliku main.tex.

3.Wygenerowany dokument PDF pojawi się w odpowiednim katalogu.



