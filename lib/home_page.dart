import 'package:flutter/material.dart';
import 'package:valentine/themes/theme_extension.dart';
import 'package:valentine/widgets/custom_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _hasAccepted = false;

  void _onAccept() {
    setState(() {
      _hasAccepted = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/gifs/${_hasAccepted ? 'bear_kisses' : 'cute_love_bear_roses'}.gif',
              height: 200,
              width: 200,
            ),
            Text(
              _hasAccepted ? 'Yay!!! 😀❤️' : 'Will you be my Valentine?',
              style: context.theme.textTheme.titleLarge,
            ),
            if (!_hasAccepted) ...<Widget>[
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CustomButton(
                    onPressed: _onAccept,
                    label: 'Yes',
                  ),
                  const SizedBox(width: 8),
                  CustomButton(
                    onPressed: () {},
                    label: 'No',
                    backgroundColor: Colors.red,
                  ),
                ],
              ),
            ],
          ],
        ),
      ),
    );
  }
}
