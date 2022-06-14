import 'package:calculator/widget/custom_button.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SizedBox(
          height: 400,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomButton(
                  text: 'Calculator',
                  onTap: () {
                    Navigator.pushNamed(context, '/calculator');
                  },
                ),
                CustomButton(
                  text: 'Advanced Calculator',
                  onTap: () {},
                ),
                CustomButton(
                  text: 'Unit Converter',
                  onTap: () {},
                ),
                CustomButton(
                  text: 'Money Converter',
                  onTap: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
