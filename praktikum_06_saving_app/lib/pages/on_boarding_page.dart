import 'package:flutter/material.dart';
import 'package:praktikum_06_saving_app/styles/colors.dart';
import 'package:praktikum_06_saving_app/styles/text_style.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({Key? key}) : super(key: key);
  static const nameRoute = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: kBgColor.withOpacity(0.5),
        child: Column(
          children: [
            SafeArea(
              child: SizedBox(height: 30), // Geser turun gambar sebanyak 30px
            ),
            Image(
              image: AssetImage('assets/images/money.png'),
            ),
            SizedBox(
              height: 150,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              padding: EdgeInsets.all(26),
              constraints: BoxConstraints.expand(
                height: 260,
                width: 320,
              ),
              decoration: BoxDecoration(
                color: kWhite,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: Column(
                children: [
                  Text(
                    'Welcome🙌',
                    style: kHeading5.copyWith(color: kBlack),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'welcome to my-wallet, the easy way to save and control your finance',
                    style: kSubtitle2.copyWith(color: kSuvaGray),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, '/main', (route) => false);
                    },
                    child: Text(
                      'Get Started',
                      style: kButton1.copyWith(color: kWhite),
                    ),
                    style: TextButton.styleFrom(
                      backgroundColor: kBlueRibbon,
                      padding: EdgeInsets.symmetric(
                        vertical: 14,
                        horizontal: 36,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}