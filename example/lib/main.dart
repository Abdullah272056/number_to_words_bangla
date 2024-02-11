import 'package:flutter/material.dart';
import 'package:number_to_words_bangla/number_to_words_bangla.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Number to Words Bangla',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text("Number To Words Bangla"),
        ),
        body: Center(
          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Input Number: 502501035.51',
              ),
              const SizedBox(height: 50,),
              Text(
                 NumberToWordsBangla().inputNumberConvertToBanglaWord(inputNumber: '502501035.51'),
                textAlign: TextAlign.center,
              ),
              Text(
                 NumberToWordsBangla().engToBnConvert(englishNumber: '502501035.51'),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

