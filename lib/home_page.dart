import 'package:flutter/material.dart';
import 'package:valentine/themes/theme_extension.dart';
import 'package:valentine/widgets/custom_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/gifs/cute_love_bear_roses.gif',
              height: 200,
              width: 200,
            ),
            Text(
              'Will you be my Valentine?',
              style: context.theme.textTheme.titleLarge,
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CustomButton(
                  onPressed: () {},
                  label: 'Yes',
                ),
                const SizedBox(width: 8),
                CustomButton(
                  onPressed: () {},
                  label: 'No',
                  backgroundColor: Colors.red,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
