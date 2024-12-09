import 'package:flutter/material.dart';
import 'package:local_search/data/model/localsearch.dart';

class Attractions extends StatelessWidget {
  LocalItem localItem;

  Attractions(this.localItem);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 50,
      child: Text(localItem.title, maxLines: 2,),
    );
  }
}

