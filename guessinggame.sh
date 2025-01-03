#!/bin/bash

# Fonction qui joue le jeu
guessing_game() {
  local correct_answer=$(ls -1 | wc -l)  # Compte le nombre de fichiers dans le répertoire
  local guess=-1  # Initialisation de la variable guess

  # Boucle tant que l'utilisateur ne trouve pas la bonne réponse
  while [ "$guess" -ne "$correct_answer" ]; do
    echo "Combien de fichiers se trouvent dans le répertoire actuel ?"
    read guess  # L'utilisateur entre sa réponse

    if [ "$guess" -lt "$correct_answer" ]; then
      echo "Votre estimation est trop basse. Essayez encore."
    elif [ "$guess" -gt "$correct_answer" ]; then
      echo "Votre estimation est trop haute. Essayez encore."
    else
      echo "Félicitations, vous avez trouvé le bon nombre de fichiers !"
    fi
  done
}

# Lancer le jeu
guessing_game
