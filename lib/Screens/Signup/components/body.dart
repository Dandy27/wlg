import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wlg/Screens/Login/login_screen.dart';
import 'package:wlg/Screens/Signup/components/background.dart';
import 'package:wlg/components/alread_have_an_account_check.dart';
import 'package:wlg/components/rounded_button.dart';
import 'package:wlg/components/rounded_input_filed.dart';
import 'package:wlg/components/rounded_password_flutter.dart';
import 'package:wlg/constants.dart';

import 'or_divider.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'SIGNUP',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          SvgPicture.asset(
            'assets/icons/signup.svg',
            height: size.height * 0.35,
          ),
          RoundedInputField(hintText: 'Your Email', onChanged: (value) {}),
          RoundedPasswordField(
            onChanged: (value) {},
          ),
          RoundeButton(
            text: 'SIGNUP',
            press: () {},
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          AlreadyHaveAnAccountCheck(
            login: false,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return LoginScreen();
                  },
                ),
              );
            },
          ),
          OrDivider(),
        ],
      ),
    );
  }
}