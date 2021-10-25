import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/constants/size_config.dart';

class BuildPicture extends StatelessWidget {
  const BuildPicture({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Image.asset(
        'assets/profile.png',
        fit: BoxFit.cover,
      ),
    );
  }
}
