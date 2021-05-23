import 'package:flutter/material.dart';
import 'package:wlg/components/text_field_contaiiner.dart';

import '../constants.dart';


class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundedPasswordField({
    Key? key, required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        obscureText: true,
        decoration: InputDecoration(
            hintText: 'Password',
            icon: Icon(
              Icons.lock,
              color: kPrimaryColor,
            ),
            border: InputBorder.none,
            suffixIcon: Icon(Icons.visibility, color: kPrimaryColor,)
        ),
      ),
    );
  }
}
