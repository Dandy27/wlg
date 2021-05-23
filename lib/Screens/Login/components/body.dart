import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wlg/Screens/Login/components/background.dart';
import 'package:wlg/components/rounded_button.dart';
import 'package:wlg/components/rounded_input_filed.dart';
import 'package:wlg/components/rounded_password_flutter.dart';
import 'package:wlg/components/text_field_contaiiner.dart';
import 'package:wlg/constants.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'LOGIN',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SvgPicture.asset(
            'assets/icons/login.svg',
            height: size.height * 0.35,
          ),
          RoundedInputField(
            hintText: 'Your Email',
            icon: Icons.person,
            onChanged: (value) {},
          ),
          RoundedPasswordField(onChanged: (value){},),
          RoundeButton(text: 'LOGIN', press: (){},)
        ],
      ),
    );
  }
}
