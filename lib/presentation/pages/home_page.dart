import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                        onPressed: () {},
                        child: Text("Random Maze"),
                      );
                      ElevatedButton selectSize = ElevatedButton(
                        onPressed: () {},
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
