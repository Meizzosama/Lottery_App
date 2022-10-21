import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  Random random = Random();
  int x = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: const Center(child: Text('Lottery App'))),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Center(child: Text('Lottery winning number is: 4')),
          const SizedBox(height: 20),
          Container(
              height: x == 4 ? 600 : 250,
              width: 310,
              decoration: BoxDecoration(
                color:
                    x == 4 ? Colors.green : Colors.indigoAccent.withOpacity(.5),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: x == 4
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.done_all,
                            color: Colors.pink,
                            size: 50,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Center(
                            child: Text(
                              'Congratulations!! you have won the lottery.. \n \n $x ',
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      )
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.error,
                            color: Colors.teal,
                            size: 50,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Better Luck next time and your number is: $x \n \n  Try Again ',
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
              ))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          x = random.nextInt(20);
          print(x);
          setState(() {});
        },
        child: const Icon(Icons.refresh),
      ),
    ));
  }
}