import 'package:flutter/material.dart';
import 'package:valentine/themes/theme_extension.dart';
import 'package:valentine/widgets/custom_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _scrollControllerVertical = ScrollController();
  final ScrollController _scrollControllerHorizontal = ScrollController();
  final List<String> _phrases = <String>[
    'No',
    'Are you sure?',
    'Really sure?',
    'Think again!',
    'Last chance!',
    'Surely not?',
    'You might regret this!',
    'Give it another thought!',
    'Are you absolutely certain?',
    'This could be a mistake!',
    'Have a heart!',
    "Don't be so cold!",
    'Change of heart?',
    "Wouldn't you reconsider?",
    'Is that your final answer?',
    "You're breaking my heart ;(",
  ];

  int _phraseIndex = 0;
  bool _hasAccepted = false;
  Size _acceptButtonSize = const Size(100, 50);

  void _onAccept() {
    setState(() {
      _hasAccepted = true;
    });
  }

  void _onDecline() {
    final Size tmpSize = Size(
      _acceptButtonSize.width + 50,
      _acceptButtonSize.height + 50,
    );

    setState(() {
      _acceptButtonSize = tmpSize;
      _phraseIndex = (_phraseIndex + 1) % _phrases.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Scrollbar(
          controller: _scrollControllerVertical,
          child: SingleChildScrollView(
            controller: _scrollControllerVertical,
            child: Scrollbar(
              controller: _scrollControllerHorizontal,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                controller: _scrollControllerHorizontal,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        'assets/gifs/${_hasAccepted ? 'bear_kisses' : 'cute_love_bear_roses'}.gif',
                        height: 200,
                        width: 200,
                      ),
                      Text(
                        _hasAccepted
                            ? 'Yay!!! 😀❤️'
                            : 'Will you be my Valentine?',
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
                              size: _acceptButtonSize,
                            ),
                            const SizedBox(width: 8),
                            CustomButton(
                              onPressed: _onDecline,
                              label: _phrases[_phraseIndex],
                              backgroundColor: Colors.red,
                            ),
                          ],
                        ),
                      ],
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
