import 'package:flutter/material.dart';

class CalculatorPage extends StatelessWidget {
  const CalculatorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: size.height - 25,
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: size.height * .25,
                  width: double.infinity,
                  child: const Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      '1 + 1',
                      style: TextStyle(fontSize: 50.0),
                      textAlign: TextAlign.end,
                    ),
                  ),
                ),
                const Spacer(),
                Container(
                  width: double.infinity,
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                          vertical: 6,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height: 75,
                              width: 75,
                            ),
                            SizedBox(
                              height: 75,
                              width: 75,
                            ),
                            CalculatorButton(
                              onTap: () {},
                              text: 'Delete',
                              textSize: 18,
                            ),
                            CalculatorButton(
                              onTap: () {},
                              text: '=',
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                          vertical: 6,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CalculatorButton(
                              onTap: () {},
                              text: '7',
                            ),
                            CalculatorButton(
                              onTap: () {},
                              text: '8',
                            ),
                            CalculatorButton(
                              onTap: () {},
                              text: '9',
                            ),
                            CalculatorButton(
                              onTap: () {},
                              text: '/',
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                          vertical: 6,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CalculatorButton(
                              onTap: () {},
                              text: '4',
                            ),
                            CalculatorButton(
                              onTap: () {},
                              text: '5',
                            ),
                            CalculatorButton(
                              onTap: () {},
                              text: '6',
                            ),
                            CalculatorButton(
                              onTap: () {},
                              text: '*',
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                          vertical: 6,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CalculatorButton(
                              onTap: () {},
                              text: '1',
                            ),
                            CalculatorButton(
                              onTap: () {},
                              text: '2',
                            ),
                            CalculatorButton(
                              onTap: () {},
                              text: '3',
                            ),
                            CalculatorButton(
                              onTap: () {},
                              text: '+',
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                          vertical: 6,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CalculatorButton(
                              onTap: () {},
                              text: '.',
                            ),
                            CalculatorButton(
                              onTap: () {},
                              text: '0',
                            ),
                            SizedBox(
                              height: 75,
                              width: 75,
                            ),
                            CalculatorButton(
                              onTap: () {},
                              text: '-',
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CalculatorButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final Color backgroundColor;
  final Color textColor;
  final double textSize;

  const CalculatorButton(
      {Key? key,
      required this.text,
      required this.onTap,
      this.backgroundColor = Colors.blue,
      this.textColor = Colors.white,
      this.textSize = 30})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(8),
          ),
        ),
        height: 75,
        width: 75,
        child: Center(
          child: Text(
            text,
            style: TextStyle(fontSize: textSize, color: textColor),
          ),
        ),
      ),
    );
  }
}
