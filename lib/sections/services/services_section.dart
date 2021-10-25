import 'package:flutter/material.dart';
import 'package:portfolio/constants/size_config.dart';

class ServicesSection extends StatelessWidget {
  const ServicesSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple,
      width: double.infinity,
      height: SizeConfig.heightMultiplier * 50,
    );
  }
}
