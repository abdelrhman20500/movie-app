import 'package:flutter/material.dart';
import '../../../../widgets/text_form_field.dart';

class SearchTab extends StatelessWidget {
  const SearchTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff1E1E1E),
      child: Padding(
        padding: const EdgeInsets.only(top: 24.0, right: 12.0, left: 12.0),
        child: Column(
          children: [
            buildTextFormField(),
            SizedBox(height: MediaQuery.of(context).size.height*0.4,),
            const Icon(Icons.local_movies,size: 100, color: Colors.white,),
            const Text("No movies found", style: TextStyle(fontSize: 22, color: Colors.grey),),
          ],
        ),
      ),
    );
  }
}
