import 'package:flutter/material.dart';
class WatchlistItem extends StatelessWidget {
  const WatchlistItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Image(image: AssetImage("assets/images/Mask picture.png"),
          fit: BoxFit.fill,height: 80,width: 140,),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Alita Battle Angel",style: TextStyle(fontSize: 15,
                    color: Colors.white, fontWeight: FontWeight.bold),),
                SizedBox(height: 6,),
                Text("2019", style: TextStyle( color: Colors.white,),),
                SizedBox(height: 6,),
                Text("datRosa Salazar, Christoph Waltza",style: TextStyle( color: Colors.white,fontSize: 13),)
              ],
            ),
          ),
        )
      ],
    );
  }
}
