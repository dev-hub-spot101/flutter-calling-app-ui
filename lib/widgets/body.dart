import 'package:callingui/constants.dart';
import 'package:callingui/sizeConfig.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset('assets/images/3.jpg', fit: BoxFit.cover),
        DecoratedBox(
          decoration: BoxDecoration(color: Colors.black.withOpacity(0.3))
        ),

       Padding(
         padding: const EdgeInsets.all(20.0),
         child: SafeArea(child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              Text("Jimmy Ben", style: Theme.of(context).textTheme.headline3?.copyWith(color: Colors.white)),
              VerticalSapcing(of: 10),
              Text("Incoming 00.40".toUpperCase(), style: TextStyle(color: Colors.white60)),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                   SizedBox(
                    height: getProportionScreenHeight(64),
                    width: getProportionScreenWidth(64),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                        shape:  MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                            side: BorderSide(color: Colors.white)
                          )
                        )
                      ),
                      onPressed: (){},
                      child: Icon(Icons.mic_none_outlined,  color: Colors.black,),
                    ),
                  ),
                  SizedBox(
                    height: getProportionScreenHeight(64),
                    width: getProportionScreenWidth(64),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(dRedColor),
                        shape:  MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                            side: BorderSide(color: dRedColor)
                          )
                        )
                      ),
                      onPressed: (){},
                      child: Icon(Icons.call_end_sharp),
                    ),
                  ),
                  SizedBox(
                    height: getProportionScreenHeight(64),
                    width: getProportionScreenWidth(64),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                        shape:  MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                            side: BorderSide(color: Colors.white)
                          )
                        )
                      ),
                      onPressed: (){},
                      child: Icon(Icons.volume_up, color: Colors.black,),
                    ),
                  )
                ],
              )
             
          ],
         )),
       )
      ],
    );
  }
}