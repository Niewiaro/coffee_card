import 'package:flutter/material.dart';

class CoffeePrefs extends StatefulWidget {
  const CoffeePrefs({super.key});

  @override
  State<CoffeePrefs> createState() => _CoffeePrefsState();
}

class _CoffeePrefsState extends State<CoffeePrefs> {
  int strength = 1;
  int sugars = 1;

  void increaseStrength({int min = 1, int max = 5}) {
    setState(() {
      strength = strength < max ? strength + 1 : min;
    });
  }

  void increaseSugars({int min = 0, int max = 5}) {
    setState(() {
      sugars = sugars < max ? sugars + 1 : min;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Row(
            children: [
              const Text('Strength: '),
              Text('$strength'),
              Image.asset(
                'assets/img/coffee_bean.png',
                width: 25,
                color: Colors.brown[100],
                colorBlendMode: BlendMode.multiply,
              ),
              const Expanded(child: SizedBox()),
              FilledButton(
                style: FilledButton.styleFrom(
                  backgroundColor: Colors.brown,
                  foregroundColor: Colors.white,
                ),
                onPressed: increaseStrength,
                child: const Text('+'),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Row(
            children: [
              const Text('Sugars: '),
              Text('$sugars'),
              Image.asset(
                'assets/img/sugar_cube.png',
                width: 25,
                color: Colors.brown[100],
                colorBlendMode: BlendMode.multiply,
              ),
              const Expanded(child: SizedBox()),
              FilledButton(
                style: FilledButton.styleFrom(
                  backgroundColor: Colors.brown,
                  foregroundColor: Colors.white,
                ),
                onPressed: increaseSugars,
                child: const Text('+'),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
