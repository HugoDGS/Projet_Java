enum TypeCell
{
  EMPTY, WALL, DESTRUCTIBLE_WALL, EXIT_DOOR
}

class Board
{
  TypeCell _cells[][];
  PVector _drawPosition;
  PVector _drawSize;
  int _nbCellsX;
  int _nbCellsY;
  int _cellSize; // cells should be square

  Board(PVector drawPosition, PVector drawSize, int nbCellsX, int nbCellsY) {
  }

  PVector getCellCenter(int i, int j) {
    return null;
  }

  void drawIt() {
  }
}
