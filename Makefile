# Nom du fichier de script
SCRIPT = guessinggame.sh

# Titre du projet
TITLE = "Jeu de devinette de fichiers"

# Commande pour compter le nombre de lignes dans le fichier
LINE_COUNT = $(shell wc -l < $(SCRIPT))

# Date et heure d'exécution de la commande make
DATE = $(shell date)

# Cible par défaut : générer le fichier README.md
all: README.md

# Générer le fichier README.md
README.md:
	@echo "# $(TITLE)" > README.md
	@echo "" >> README.md
	@echo "Date et heure de l'exécution : $(DATE)" >> README.md
	@echo "Nombre de lignes de code dans $(SCRIPT) : $(LINE_COUNT)" >> README.md
