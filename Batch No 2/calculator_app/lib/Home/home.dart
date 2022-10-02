// ignore_for_file: avoid_print, avoid_unnecessary_containers, unused_local_variable
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

import '../Widgets/button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var userIbput = '';
  var answer = '';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Expanded(
                // flex: 3,
                child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      userIbput,
                      style: const TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    answer,
                    style: const TextStyle(
                        fontSize: 35,
                        color: Colors.white,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ],
            )),
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // --------------------------------1st

                  Row(
                    children: [
                      CalButtons(
                        buttonText: 'AC',
                        buttoncolor: Colors.grey,
                        onpress: () {
                          userIbput = '';
                          answer = '';
                          setState(() {
                            userIbput;
                            answer;
                          });
                        },
                      ),
                      CalButtons(
                        buttonText: '+/-',
                        buttoncolor: Colors.grey,
                        onpress: () {
                          userIbput += '+/-';
                          setState(() {
                            userIbput;
                          });
                        },
                      ),
                      CalButtons(
                        buttonText: '%',
                        buttoncolor: Colors.grey,
                        onpress: () {
                          userIbput += '%';
                          setState(() {
                            userIbput;
                          });
                        },
                      ),
                      CalButtons(
                        buttonText: '/',
                        buttoncolor: Colors.orange,
                        onpress: () {
                          userIbput += '/';
                          setState(() {
                            userIbput;
                          });
                        },
                      ),
                    ],
                  ),
                  // --------------------------------2nd

                  Row(
                    children: [
                      CalButtons(
                        buttonText: '7',
                        buttoncolor: Colors.grey,
                        onpress: () {
                          userIbput += '7';
                          setState(() {
                            userIbput;
                          });
                        },
                      ),
                      CalButtons(
                        buttonText: '8',
                        buttoncolor: Colors.grey,
                        onpress: () {
                          userIbput += '8';
                          setState(() {
                            userIbput;
                          });
                        },
                      ),
                      CalButtons(
                        buttonText: '9',
                        buttoncolor: Colors.grey,
                        onpress: () {
                          userIbput += '9';
                          setState(() {
                            userIbput;
                          });
                        },
                      ),
                      CalButtons(
                        buttonText: '*',
                        buttoncolor: Colors.orange,
                        onpress: () {
                          userIbput += '*';
                          setState(() {
                            userIbput;
                          });
                        },
                      ),
                    ],
                  ),

                  // --------------------------------3rd
                  Row(
                    children: [
                      CalButtons(
                        buttonText: '4',
                        buttoncolor: Colors.grey,
                        onpress: () {
                          userIbput += '4';
                          setState(() {
                            userIbput;
                          });
                        },
                      ),
                      CalButtons(
                        buttonText: '5',
                        buttoncolor: Colors.grey,
                        onpress: () {
                          userIbput += '5';
                          setState(() {
                            userIbput;
                          });
                        },
                      ),
                      CalButtons(
                        buttonText: '6',
                        buttoncolor: Colors.grey,
                        onpress: () {
                          userIbput += '6';
                          setState(() {
                            userIbput;
                          });
                        },
                      ),
                      CalButtons(
                        buttonText: '-',
                        buttoncolor: Colors.orange,
                        onpress: () {
                          userIbput += '-';
                          setState(() {
                            userIbput;
                          });
                        },
                      ),
                    ],
                  ),

                  // --------------------------------4th
                  Row(
                    children: [
                      CalButtons(
                        buttonText: '1',
                        buttoncolor: Colors.grey,
                        onpress: () {
                          userIbput += '1';
                          setState(() {
                            userIbput;
                          });
                        },
                      ),
                      CalButtons(
                        buttonText: '2',
                        buttoncolor: Colors.grey,
                        onpress: () {
                          userIbput += '2';
                          setState(() {
                            userIbput;
                          });
                        },
                      ),
                      CalButtons(
                        buttonText: '3',
                        buttoncolor: Colors.grey,
                        onpress: () {
                          userIbput += '3';
                          setState(() {
                            userIbput;
                          });
                        },
                      ),
                      CalButtons(
                        buttonText: '+',
                        buttoncolor: Colors.orange,
                        onpress: () {
                          userIbput += '+';
                          setState(() {
                            userIbput;
                          });
                        },
                      ),
                    ],
                  ),

                  // --------------------------------5th
                  Row(
                    children: [
                      CalButtons(
                        buttonText: '0',
                        buttoncolor: Colors.grey,
                        onpress: () {
                          userIbput += '0';
                          setState(() {
                            userIbput;
                          });
                        },
                      ),
                      CalButtons(
                        buttonText: '.',
                        buttoncolor: Colors.grey,
                        onpress: () {
                          userIbput += '.';
                          setState(() {
                            userIbput;
                          });
                        },
                      ),
                      CalButtons(
                        buttonText: 'DEL',
                        buttoncolor: Colors.grey,
                        onpress: () {
                          userIbput =
                              userIbput.substring(0, userIbput.length - 1);
                          setState(() {});
                        },
                      ),
                      CalButtons(
                        buttonText: '=',
                        buttoncolor: Colors.orange,
                        onpress: () {
                          equalpress();
                          setState(() {});
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }

  void equalpress() {
    Parser p = Parser();
    Expression expression = p.parse(userIbput);

    ContextModel contextModel = ContextModel();
    double eval = expression.evaluate(EvaluationType.REAL, contextModel);

    answer = eval.toString();
  }
}
