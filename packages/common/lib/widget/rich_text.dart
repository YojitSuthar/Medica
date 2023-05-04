import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../theme/theme.dart';

class RichTxt extends StatelessWidget {
  const RichTxt({
    super.key,
    required this.text_1,
    required this.text_2,
    required this.onPress,
    required this.style_1,
    required this.style_2,
  });

  final String text_1;
  final String text_2;
  final VoidCallback onPress;
  final TextStyle style_1;
  final TextStyle style_2;

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(
          text: text_1,
          style: style_1,
          children: <TextSpan>[
            TextSpan(
                text: text_2,
                style: style_2,
              recognizer: TapGestureRecognizer()..onTap = onPress
            )
          ],
        ),
    );
  }
}
