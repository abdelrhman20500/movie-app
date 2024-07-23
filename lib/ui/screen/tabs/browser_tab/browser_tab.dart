import 'package:flutter/material.dart';

import '../../../../widgets/build_browser_stack.dart';

class BrowserTab extends StatelessWidget {
  const BrowserTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff1E1E1E),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height*0.05,),
            const Text("Browse Category", style: TextStyle(fontSize: 22, color: Colors.white),),
           Expanded(
             child: GridView.builder(
               itemCount: 10,
               gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                 crossAxisCount: 2,
                 mainAxisSpacing: 2,
                 crossAxisSpacing: 4,
               ),
               itemBuilder: (context, index) {
                 return const Padding(
                   padding: EdgeInsets.all(12.0),
                   child: BuildBrowserStack(),
                 );
               })
           ),
          ],
        ),
      ),
    );
  }
}

