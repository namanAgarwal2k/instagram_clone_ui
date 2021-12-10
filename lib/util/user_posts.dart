import 'package:flutter/material.dart';

class UserPosts extends StatelessWidget {
  final String name;
  const UserPosts({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8, right: 8),
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.grey[400],
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Text(
                name,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const Icon(Icons.menu),
        ],
      ),
      const SizedBox(
        height: 10,
      ),
      Container(
        color: Colors.grey[300],
        height: 400,
      ),
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: const [
                Icon(Icons.favorite),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(Icons.chat_bubble_outline),
                ),
                Icon(Icons.send),
              ],
            ),
            const Icon(Icons.bookmark),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 10.0),
        child: Row(
          children: const [
            Text('Liked by'),
            Text(
              'naman',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text('and'),
            Text(
              'jb',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: RichText(
            text: TextSpan(
                style: const TextStyle(color: Colors.black),
                children: [
              TextSpan(
                text: name,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              const TextSpan(text: ' its never too late to start a new journey')
            ])),
      ),
      const SizedBox(height: 24),
    ]);
  }
}
