import 'package:flutter/material.dart';
import 'package:local_search/data/model/localsearch.dart';

class Attractions extends StatelessWidget {
  LocalItem localItem;

  Attractions(this.localItem);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        border: Border.all(color: Colors.grey, width: 0.5),
        color: Colors.white,
      ),
      width: 200,
      padding: const EdgeInsets.only(left: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 15,
            ),
            SizedBox(
              child: Text(
                localItem.title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black,
                ),
                maxLines: 1,
              ),
            ),
            SizedBox(
              child: Text(
                localItem.category,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                  color: Colors.grey,
                ),
                maxLines: 1,
              ),
            ),
            SizedBox(
              child: Text(
                localItem.roadAddress,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                  color: Colors.grey,
                ),
                maxLines: 1,
              ),
            ),
            Container(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}

