import 'package:flutter/material.dart';

import '../../../../widgets/watchList_item.dart';

class WatchListTab extends StatelessWidget {
  const WatchListTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff1E1E1E),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 44.0),
            child: Text("Watchlist", style: TextStyle(fontSize: 22, color: Colors.white),),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 8,
              itemBuilder: (context, index){
                return const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 4.0),
                  child: Column(
                    children: [
                      WatchlistItem(),
                      Divider(thickness: 1, color: Colors.grey,)
                    ],
                  ),
                );
              }
            ),
          )
        ],
      ),
    );
  }
}

