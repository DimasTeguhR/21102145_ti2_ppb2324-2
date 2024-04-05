import 'package:flutter/material.dart';
import 'package:praktikum_06_saving_app/styles/colors.dart';
import 'package:praktikum_06_saving_app/styles/text_style.dart';

class PortfolioPage extends StatelessWidget {
  const PortfolioPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 25),
            height: 240,
            width: double.infinity,//lebar layar mengikuti hp
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(40),
              ),
              image: DecorationImage(
                image: AssetImage('assets/images/bg-container-2.png'),
                fit: BoxFit.cover,
              ),
              boxShadow: [
                BoxShadow(
                  color: kGrey,
                  blurRadius: 5,
                  offset: Offset.fromDirection(2),
                )
              ],
            ),
            child: SafeArea(
              child: Column(
                children: [
                  Text(
                    'My Portofolio',
                    style: kHeading6.copyWith(
                      color: kWhite,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Savings Value',
                    style: kSubtitle2.copyWith(
                      color: kWhite,
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    'Rp 10.000.000',
                    style: kHeading5.copyWith(
                      color: kWhite,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
