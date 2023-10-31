import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Style.dart';

class customeTextButton extends StatelessWidget {
  const customeTextButton({
    super.key,
    this.onTap,
    required this.text,
  });

  final void Function()? onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onTap,
        child: Text(
          '$text',
          style:
              text == ' نسيت كلمه المرور؟' ? Styles.text16ligth : Styles.text16,
        ));
  }
}
