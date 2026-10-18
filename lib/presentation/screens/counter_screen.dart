import 'package:contador_equipos/widgets/custom_score_button.dart';
import 'package:contador_equipos/widgets/custom_score_widget.dart';
import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int _scoreTeamA = 0;
  int _scoreTeamB = 0;

  int _foulsTeamA = 0;
  int _foulsTeamB = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Marcador Basketball'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {
              setState(() {
                _scoreTeamA = 0;
                _scoreTeamB = 0;
                _foulsTeamA = 0;
                _foulsTeamB = 0;
              });
            },
          ),
        ],
      ),
      body: Column(
        children: [
          CustomScoreWidget(
            teamName: 'Equipo A',
            score: _scoreTeamA,
            fouls: _foulsTeamA,
            borderColor: Color.fromARGB(255, 26, 176, 3),
          ),

          const SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 2.0),
                    child: CustomScoreButton(
                      points: '+1',
                      label: 'T. Libre',
                      backgroundColor: Color.fromARGB(255, 26, 176, 3),

                      onPressed: () {
                        setState(() {
                          _scoreTeamA += 1;
                        });
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 2.0),
                    child: CustomScoreButton(
                      points: '+2',
                      label: 'T.Campo',
                      backgroundColor: Color.fromARGB(255, 26, 176, 3),

                      onPressed: () {
                        setState(() {
                          _scoreTeamA += 2;
                        });
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 2.0),
                    child: CustomScoreButton(
                      points: '+3',
                      label: 'T.Triple',
                      backgroundColor: Color.fromARGB(255, 26, 176, 3),

                      onPressed: () {
                        setState(() {
                          _scoreTeamA += 3;
                        });
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 2.0),
                    child: CustomScoreButton(
                      points: '+1',
                      label: 'Falta',
                      backgroundColor: Color.fromARGB(255, 23, 127, 255),

                      onPressed: () {
                        setState(() {
                          _foulsTeamA += 1;
                        });
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 2.0),
                    child: CustomScoreButton(
                      points: '-1',
                      label: 'Restar',
                      backgroundColor: Color.fromARGB(255, 255, 23, 23),

                      onPressed: () {
                        setState(() {
                          if (_scoreTeamA > 0) {
                            _scoreTeamA -= 1;
                          }
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          ////EQUIPO B ///
          CustomScoreWidget(
            teamName: 'Equipo B',
            score: _scoreTeamB,
            fouls: _foulsTeamB,
            textColor: Colors.white,
            borderColor: Color.fromARGB(255, 218, 87, 48),
          ),

          const SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 2.0),
                    child: CustomScoreButton(
                      points: '+1',
                      label: 'T. Libre',
                      backgroundColor: Color.fromARGB(255, 218, 87, 48),
                      textColor: Colors.white,
                      onPressed: () {
                        setState(() {
                          _scoreTeamB += 1;
                        });
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 2.0),
                    child: CustomScoreButton(
                      points: '+2',
                      label: 'T.Campo',
                      backgroundColor: Color.fromARGB(255, 218, 87, 48),
                      textColor: Colors.white,
                      onPressed: () {
                        setState(() {
                          _scoreTeamB += 2;
                        });
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 2.0),
                    child: CustomScoreButton(
                      points: '+3',
                      label: 'T.Triple',
                      backgroundColor: Color.fromARGB(255, 218, 87, 48),

                      onPressed: () {
                        setState(() {
                          _scoreTeamB += 3;
                        });
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 2.0),
                    child: CustomScoreButton(
                      points: '+1',
                      label: 'Falta',
                      backgroundColor: Color.fromARGB(255, 23, 127, 255),
                      onPressed: () {
                        setState(() {
                          _foulsTeamB += 1;
                        });
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 2.0),
                    child: CustomScoreButton(
                      points: '-1',
                      label: 'Restar',
                      backgroundColor: Color.fromARGB(255, 255, 23, 23),
                      onPressed: () {
                        setState(() {
                          if (_scoreTeamB > 0) {
                            _scoreTeamB -= 1;
                          }
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
