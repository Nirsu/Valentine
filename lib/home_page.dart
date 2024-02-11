import 'package:flutter/material.dart';
import 'package:flutter/src/rendering/viewport_offset.dart';
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
                              label: 'No',
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
