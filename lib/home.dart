import 'package:flutter/material.dart';
import 'package:instagram_clone/bubble_stories.dart';

class UserHome extends StatelessWidget {
  final List people = [
    'darshil',
    'jatin',
    'dhawam',
    'harshit',
    'ashish',
    'yogi',
    'naman',
  ];
  UserHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Instagram',
              style: TextStyle(color: Colors.black),
            ),
            Row(
              children: const [
                Icon(Icons.add),
                Padding(
                  padding: EdgeInsets.all(23),
                  child: Icon(Icons.favorite),
                ),
                Icon(Icons.share)
              ],
            )
          ],
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 130,
            child: ListView(scrollDirection: Axis.horizontal, children: const [
              BubbleStories(text: 'naman'),
              BubbleStories(
                text: 'rohan',
              ),
              BubbleStories(
                text: 'dhawan',
              ),
              BubbleStories(
                text: 'darshil',
              ),
              BubbleStories(
                text: 'jatin',
              ),
              BubbleStories(
                text: 'ashish',
              ),
              BubbleStories(
                text: 'harshit',
              ),
            ]),
          )
        ],
      ),
    );
  }
}
