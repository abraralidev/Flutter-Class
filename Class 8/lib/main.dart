import 'package:flutter/material.dart';

import 'Pages/input_page.dart';

void main() => runApp(const BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
        theme: ThemeData.dark().copyWith(
            appBarTheme: const AppBarTheme(backgroundColor: Color(0xff0a0d22)),
            primaryColor: const Color(0xff0a0d22),
            colorScheme:
                ColorScheme.fromSwatch().copyWith(secondary: Colors.purple),
            scaffoldBackgroundColor: const Color(0xff0a0d22),
            textTheme:
                const TextTheme(bodyText1: TextStyle(color: Colors.white))),
        debugShowCheckedModeBanner: false,
        home: const InputPage(),
      );
}
