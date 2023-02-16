import 'package:callingui/constants.dart';
import 'package:callingui/sizeConfig.dart';
import 'package:callingui/widgets/groupbody.dart';
import 'package:flutter/material.dart';

class GroupCall extends StatelessWidget {
  const GroupCall({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: GroupBody(),
      bottomNavigationBar: Container(
        color: dBackgroundColor,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              
               children: [
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
                              // side: BorderSide(color: Colors.white)
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
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                          shape:  MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100),
                              // side: BorderSide(color: Colors.white)
                            )
                          )
                        ),
                        onPressed: (){},
                        child: Icon(Icons.volume_up, color: Colors.black,),
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
                              // side: BorderSide(color: Colors.white)
                            )
                          )
                        ),
                        onPressed: (){},
                        child: Icon(Icons.videocam_outlined, color: Colors.black,),
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
                            )
                          )
                        ),
                        onPressed: (){},
                        child: Icon(Icons.refresh_rounded, color: Colors.black,),
                      ),
                    )
                  ],
            ),
          ),
        ),
      ),
    );
  }
}