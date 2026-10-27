import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double _currentMazeSize = 5;
  TextEditingController mazeSizeController = TextEditingController(text: "5");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsGeometry.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 32),
              Text(
                "Mazoleum",
                style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4),
              Expanded(
                child: Center(
                  child: LayoutBuilder(
                    builder: (context, constraints) {
                      final isWide = constraints.maxWidth > 480;

                      ElevatedButton randomMaze = ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/maze');
                        },
                        child: Text("Random Maze"),
                      );
                      ElevatedButton selectSize = ElevatedButton(
                        onPressed: () {
                          showDialog<String>(
                            context: context,
                            builder: (context) => Dialog.fullscreen(
                              child: StatefulBuilder(
                                builder: (context, setDialogState) {
                                  return Column(
                                    mainAxisSize: .min,
                                    mainAxisAlignment: .center,
                                    children: <Widget>[
                                      const Text('Choose Maze Size'),
                                      const SizedBox(height: 15),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 20.0,
                                        ),
                                        child: Slider(
                                          min: 5,
                                          max: 20,
                                          divisions: 15,
                                          onChanged: (value) {
                                            setDialogState(() {
                                              _currentMazeSize = value;
                                            });
                                          },
                                          value: _currentMazeSize,
                                        ),
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          Navigator.pushNamed(context, '/maze');
                                        },
                                        child: const Text('Play!'),
                                      ),
                                    ],
                                  );
                                },
                              ),
                            ),
                          );
                        },
                        child: Text("Select Size"),
                      );
                      SizedBox box = SizedBox(width: 24, height: 24);

                      return isWide
                          ? Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [randomMaze, box, selectSize],
                            )
                          : Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [randomMaze, box, selectSize],
                            );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
