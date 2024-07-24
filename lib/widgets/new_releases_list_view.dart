import 'package:flutter/material.dart';
class NewReleasesListView extends StatelessWidget {
  const NewReleasesListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image(image: AssetImage("assets/images/man.png")),
        Image(image: AssetImage("assets/images/bookmark.png"))
      ],
    );
  }
}
