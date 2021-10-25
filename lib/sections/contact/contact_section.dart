import 'package:flutter/material.dart';
import 'package:portfolio/constants/size_config.dart';

class ContactSession extends StatelessWidget {
  const ContactSession({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      width: double.infinity,
      height: SizeConfig.heightMultiplier * 50,
    );
  }
}
