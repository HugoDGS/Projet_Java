class Game
{
  Board _board;
  Hero _hero;

  String _levelName;

  Game() {
    _board = new Board("levels/level1.txt", 30);
    _hero = null;
  }
  

  void update() {
  }

  void drawIt() {
    _board.drawIt();
  }

  void handleKey(int k) {
  }
}
