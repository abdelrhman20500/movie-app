import 'package:flutter/material.dart';


class ListViewRecommended extends StatelessWidget {
  const ListViewRecommended({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.15),
            spreadRadius: 2,
            blurRadius: 7,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Image(image: AssetImage("assets/images/recommend.png"),
              fit: BoxFit.cover, height: 150,),
              Image(image: AssetImage("assets/images/bookmark.png"))
            ],
          ),
          Row(
            children: [
              Icon(Icons.star, color: Colors.yellow,),
              SizedBox(width: 8,),
              Text("(7.7)",style: TextStyle(color: Colors.white),),
            ],
          ),
          SizedBox(height: 4,),
          Text("Deadpool 2", style: TextStyle(color: Colors.white),),
          SizedBox(height: 4,),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 6.0),
                child: Text("2018", style: TextStyle(color: Colors.white),),
              ),
              Padding(
                padding: EdgeInsets.only(right: 6.0, left: 6.0),
                child: Text("R", style: TextStyle(color: Colors.white),),
              ),
              Padding(
                padding: EdgeInsets.only(left: 6.0),
                child: Text("1h 59m", style: TextStyle(color: Colors.white),),
              ),
            ],
          )
        ],
      ),
    );
  }
}


