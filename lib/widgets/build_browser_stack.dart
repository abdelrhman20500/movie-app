import 'package:flutter/material.dart';

class BuildBrowserStack extends StatelessWidget {
  const BuildBrowserStack({super.key,});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      alignment: Alignment.center, // center the text
      children: [
        Image(
          image: AssetImage("assets/images/Mask picture.png"),
          fit: BoxFit.fill,height: 144,),
        Text("Action", style: TextStyle(
            color: Colors.white,fontWeight: FontWeight.w600,fontSize: 26),
        ),
      ],
    );
  }
}