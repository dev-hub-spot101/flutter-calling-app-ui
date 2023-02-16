import 'package:callingui/sizeConfig.dart';
import 'package:callingui/widgets/body.dart';
import 'package:flutter/material.dart';

class AudioCall extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}