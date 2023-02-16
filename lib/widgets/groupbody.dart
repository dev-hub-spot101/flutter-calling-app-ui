import 'package:callingui/constants.dart';
import 'package:callingui/sizeConfig.dart';
import 'package:callingui/widgets/dialuserpic.dart';
import 'package:flutter/material.dart';

class GroupBody extends StatelessWidget {
  
  List<Map<String, dynamic>> callingData = [
    {
      "isCalling":false,
      "name":"User 1",
      "image":"assets/images/1.jpg"
    },
    {
      "isCalling":true,
      "name":"User 2",
      "image":"assets/images/2.jpg"
    },
    {
      "isCalling":false,
      "name":"User 3",
      "image":"assets/images/3.jpg"
    }
    ,{
      "isCalling":false,
      "name":"User 4",
      "image":"assets/images/4.jpg"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.zero,
      itemCount: callingData.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 0.49,
        crossAxisCount: 2,
        // mainAxisSpacing: 20,
        // crossAxisSpacing: 20
      ),
      itemBuilder:(context, index) => callingData[index]["isCalling"] 
      ? Container(
          width: SizeConfig.screenWidth/2,
          child: AspectRatio(
            aspectRatio: 0.53,
            child: Container(
              color: dBackgroundColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DialUserPic(
                    size: 250,
                    image: callingData[index]["image"],
                  ),
                  VerticalSapcing(of: 10),
                  Text(callingData[index]["name"], style: TextStyle(fontSize: 18, color: Colors.white)),
                  VerticalSapcing(of: 5),
                  Text("Calling...", style: TextStyle(color: Colors.white))
                ],
              ),
            ),
          ),
        ):
        Image.asset(callingData[index]["image"], fit: BoxFit.cover,)
     
    );
    
  }
}