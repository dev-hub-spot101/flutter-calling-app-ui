import 'package:callingui/sizeConfig.dart';
import 'package:flutter/material.dart';

class DialUserPic extends StatelessWidget {
  final double size;
  final String image;
  const DialUserPic({Key? key, this.size = 1, required this.image }):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30/250 * size),
      height: getProportionScreenHeight(size),
      width: getProportionScreenWidth(size),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: RadialGradient(
          colors: [Colors.white.withOpacity(0.02), Colors.white.withOpacity(0.05)],
          stops: [0.5, 1]
        )
      ),
      child: CircleAvatar(
        radius: 100,
        backgroundImage: AssetImage(image),
      )
    );
  }
}