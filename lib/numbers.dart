// import 'dart:async';
// import 'dart:math';
//
// import 'package:flame/game.dart';
// import 'package:flutter/material.dart';
//
// class NumberMemoryGame extends BaseGame {
//   List<int> numbers = [];
//
//   @override
//   Future<void> onLoad() async {
//     // Create the game screen
//     final screen = await screenManager.push(
//       MaterialWidget(
//         child: Scaffold(
//           appBar: AppBar(title: const Text('Number Memory Game')),
//           backgroundColor: Colors.white,
//           body: const Center(child: Text('Ready to Play!')),
//         ),
//       ),
//     );
//
//     // Generate and show random numbers
//     final random = Random();
//     for (int i = 0; i < 10; i++) {
//       numbers.add(random.nextInt(100));
//       add(
//           Text(
//             numbers[i].toString(),
//             style: const TextStyle(fontSize: 24),
//           )
//             ..position.setValues(100.0 * i, 200.0)
//       );
//     }
//
//     // Hide the numbers after 5 seconds
//     Timer(const Duration(seconds: 5), () {
//       numbers.forEach((number) => remove(number.toString()));
//     });
//   }
// }
