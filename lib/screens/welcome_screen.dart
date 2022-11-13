import 'package:flutter/material.dart';
import 'package:not_first_flutter_app/main.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({
    super.key,
    required this.callback,
    required this.currentScreenIndex,
  });

  final int currentScreenIndex;
  final void Function(int index) callback;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text.rich(
            TextSpan(
              text: 'My',
              children: [
                TextSpan(
                  text: 'Flutter',
                  style: TextStyle(
                    fontSize: 50.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: 'app',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Wrap(
            runSpacing: 8.0,
            alignment: WrapAlignment.center,
            children: screens
                .asMap()
                .map(
                  (index, screen) => MapEntry(
                    index,
                    InkWell(
                      onTap: () => callback(index),
                      child: Text(
                        "${screen['title'].toString()} ${index == screens.length - 1 ? '' : '\u2022'} ",
                        style: TextStyle(
                          fontSize: 17.0,
                          color: Colors.blue.shade800,
                        ),
                      ),
                    ),
                  ),
                )
                .values
                .toList(),
          ),
        ],
      ),
    );
  }
}
