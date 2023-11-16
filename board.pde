class Board {
  char[][] cells;
  int cols, rows;
  int cellSize; // La taille de chaque cellule en pixels

  Board(String levelPath, int cellSize) {
    this.cellSize = cellSize;
    loadLevel(levelPath);
  }

  void loadLevel(String levelPath) {
    String[] lines = loadStrings(levelPath);
    if (lines == null || lines.length <= 1) {
      println("Erreur de chargement du fichier de niveau ou fichier vide");
      return;
    }

    rows = lines.length - 1; // La première ligne est le titre
    cols = lines[1].length(); // Prendre la longueur de la deuxième ligne comme largeur du plateau
    cells = new char[cols][rows];

    for (int j = 1; j < lines.length; j++) {
      for (int i = 0; i < cols; i++) {
        cells[i][j-1] = lines[j].charAt(i);
      }
    }
  }

  void drawIt() {
    for (int i = 0; i < cols; i++) {
      for (int j = 0; j < rows; j++) {
        switch (cells[i][j]) {
        case 'x':
          fill(120); // Couleur pour les murs
          break;
        case 'o':
          fill(255, 200, 0); // Couleur pour les murs destructibles
          break;
        case 'S':
          fill(0, 255, 0); // Couleur pour la porte de sortie
          break;
        case 'M':
          fill(255, 0, 0); // Couleur pour les monstres
          break;
        case 'B':
          fill(0, 0, 255); // Couleur pour Bomberman
          break;
        case 'v':
        default:
          fill(255); // Couleur pour le vide
          break;
        }
        // Dessiner la cellule avec un petit espace pour créer un effet de grille
        rect(i * cellSize, j * cellSize, cellSize - 1, cellSize - 1);
      }
    }
  }
}
