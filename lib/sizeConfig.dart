import 'package:flutter/material.dart';

class SizeConfig{
  static MediaQueryData _mediaQueryData = new MediaQueryData();
  static double screenWidth = 0;
   static double screenHeight = 0;
  static double defaultSize = 0;
  static Orientation? orientation;


  void init(BuildContext context){
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    orientation  =  _mediaQueryData.orientation;
  }
}


double getProportionScreenHeight(double inputHeight){
  double screenHeight = SizeConfig.screenHeight;
  return (inputHeight / 896.0)* screenHeight;
}

double getProportionScreenWidth(double inputHeight){
  double screenWidth = SizeConfig.screenWidth;
  return (inputHeight / 414.0)* screenWidth;
}


class VerticalSapcing extends StatelessWidget {
  final double of;
  const VerticalSapcing({Key? key, this.of = 20 }):super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionScreenHeight(of),
    );
  }
}


class HorizontalSapcing extends StatelessWidget {
  final double of;
  const HorizontalSapcing({Key? key, this.of = 20 }):super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionScreenWidth(of),
    );
  }
}
