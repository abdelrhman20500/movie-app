import 'package:flutter/material.dart';
import 'package:movie_app/widgets/list_view_recommended.dart';
import 'package:movie_app/widgets/new_releases_list_view.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color:  Colors.black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height*0.3,
            child: const Image(
              image: AssetImage("assets/images/Image.png"),
              fit: BoxFit.cover, // make the image fit within the container
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height*0.02,),
          Container(
            height: MediaQuery.of(context).size.height*0.25,
            color: const Color(0xff1E1E1E),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(height: 8,),
                  const Text("New Releases", style: TextStyle(color: Colors.white, fontSize: 22),),
                  const SizedBox(height: 16,),
                  Expanded(
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                        itemBuilder: (context, index){
                          return const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            child: NewReleasesListView(),
                          );
                        }
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height*0.02,),
          Expanded(
              flex: 1,
              child: Container(
                color: const Color(0xff1E1E1E),
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const SizedBox(height: 4,),
                      const Text("Recomended", style: TextStyle(color: Colors.white, fontSize: 22),),
                      // const SizedBox(height: 8,),
                      Expanded(
                        child: ListView.builder(
                          shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: 4,
                            itemBuilder: (context, index){
                              return const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 8.0),
                                child: ListViewRecommended(),
                              );
                            }
                        ),
                      ),
                    ],
                  ),
                ),
              )),
        ],
      ),
    );
  }
}

