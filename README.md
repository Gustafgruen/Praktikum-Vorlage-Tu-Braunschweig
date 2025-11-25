# Einrichtung
Um die Klasse **Praktikum** zu verwenden, muss die Dokumentenklasse **documentclass** in der Versuchsanleitung geladen werden. Zusätzlich wird ein Compiler wie **XeLaTeX** benötigt.
Mit der Option **pdflatex** in der Klasse kann ein älterer Compiler wie **pdfLaTeX** Verwendet werden  

## Users
in Users werden die User wie folgt definiert
%Daten zur Gruppe
\def\Gruppennummer{000}

% Daten zur Person A
\def\Namea{Vorname Nachname}
\def\Matrikela{1234567}
\def\Emaila{vorname.nachname@tu-braunschweig.de}

% Daten zur Person B
\def\Nameb{Vorname Nachname}
\def\Matrikelb{1234567}
\def\Emailb{vorname.nachname@tu-braunschweig.de}

% Daten zur Person C
\def\Namec{Vorname Nachname}
\def\Matrikelc{1234567}
\def\Emailc{vorname.nachname@tu-braunschweig.de}

Wobei bei Nichtnutzen einer Gruppe an User diese User einfach ausgeblendet werden 
wenn der Name von Person c zum Beispiel weggelassen wird, so kommt statt den Daten ein graues Feld rüber.

---

# config
Der Konfigurationsordner enthält die Dateien, die zur Erstellung der Klasse erforderlich sind.

## Creationen
Dieser Ordner enthält benutzerdefinierte `.sty`-Dateien (Stil-Dateien).
* **ueberschrift**: Definiert die Überschriften.
* **SI**: Definiert Einheiten zur einfacheren Notation.

## Deckblatt
Dieser Ordner enthält alle Dateien für das Deckblatt.

## TUFonts
Stellt die offizielle Schriftart **Nexus** ein. Mit der Option **Nexus** in der Klasse kann die Schriftart aktiviert werden.

## Commander
Definiert Farben sowie die Kopf- und Fußzeile.

## Useful
Bindet die benötigten Pakete ein.

---

# Befehlsdefinitionen
* **\VTag**: Mit `\def\VTag{tt}` wird das Datum des Versuchs definiert.
* **\VMonat**: Mit `\def\VMonat{mm}` wird das Datum des Versuchs definiert.
* **\VJahr**: Mit `\def\VJahr{yyyy}` wird das Datum des Versuchs definiert.
* **\VNummer**: Mit `\VNummer=nn` wird die Nummer des Versuchs definiert.

---

# Abschnitte
Mit `\section` kann ein farbiger Abschnitt erstellt werden. Wenn dieses Design nicht gewünscht ist oder anders gestaltet werden soll, kann `\oldsection` verwendet werden, um eine Überschrift im traditionellen Stil zu erstellen, wie in anderen PDFs üblich.

---

# Referenz auf ein Skript
Um auf das Skript zu verweisen, kann `\hyperref[V11Skript]{Skript}` verwendet werden, wobei **V11** durch die entsprechende Versuchsnummer ersetzt werden muss.