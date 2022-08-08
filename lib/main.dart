import 'package:flutter/material.dart';
import 'package:tik_tak_toe/game_logic.dart';

void main() => runApp(const Game());

class Game extends StatelessWidget {
  const Game({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          body: GameUi(),
        ),
      ),
    );
  }
}

class GameUi extends StatefulWidget {
  const GameUi({Key? key}) : super(key: key);

  @override
  State<GameUi> createState() => _GameUiState();
}

class _GameUiState extends State<GameUi> {
  String lastValue = 'X';
  bool gameOver = false;
  int turn = 0;
  String result = '';
  List<int> scoreBoard = [0, 0, 0, 0, 0, 0, 0, 0];
  GamePlay game = GamePlay();
  void initState() {
    super.initState();

    game.board = GamePlay.initGameBoard();
    print(game.board);
  }

  @override
  Widget build(BuildContext context) {
    double boardWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
              ),
              Text(
                'It\'s ${lastValue} turn',
                style: TextStyle(
                  color:
                      lastValue == "X".toUpperCase() ? Colors.red : Colors.blue,
                  fontSize: 60,
                ),
              ),
              Container(
                width: boardWidth,
                height: boardWidth,
                child: GridView.count(
                  crossAxisCount: GamePlay.boardSize ~/ 3,
                  padding: EdgeInsets.all(16),
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                  children: List.generate(GamePlay.boardSize, (index) {
                    return InkWell(
                      onTap: gameOver
                          ? null
                          : () {
                              if (game.board![index] == '') {
                                setState(() {
                                  game.board![index] = lastValue;
                                  turn++;
                                  gameOver = game.winnerCheck(
                                      lastValue, index, scoreBoard, 3);

                                  if (gameOver) {
                                    result = '${lastValue} is the winner';
                                  } else if (!gameOver && turn == 9) {
                                    result = 'It is a draw';
                                    gameOver = true;
                                  }

                                  if (lastValue == 'X')
                                    lastValue = 'O';
                                  else
                                    lastValue = 'X';
                                });
                              }
                            },
                      child: Container(
                        width: GamePlay.blocSize,
                        height: GamePlay.blocSize,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          border: Border.all(
                            color: Colors.grey,
                            width: 5,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            game.board![index],
                            style: TextStyle(
                              color: game.board![index] == "X".toUpperCase()
                                  ? Colors.red
                                  : Colors.blue,
                              fontSize: 60,
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                result,
                style: TextStyle(color: Colors.white, fontSize: 50),
              ),
              ElevatedButton.icon(
                onPressed: () {
                  setState(() {
                    game.board = GamePlay.initGameBoard();
                    lastValue = 'X';
                    turn = 0;
                    result = '';
                    scoreBoard = [0, 0, 0, 0, 0, 0, 0, 0];
                    gameOver = false;
                  });
                },
                icon: Icon(
                  Icons.replay,
                  color: Colors.white,
                  size: 30,
                ),
                label: Text(
                  'Replay game',
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
