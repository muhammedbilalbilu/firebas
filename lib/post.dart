import 'package:firebas/fire.dart';
import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  const Post({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController text = TextEditingController();
    return Scaffold(
      body: Column(
        children: [
          Center(
              child: TextField(
            controller: text,
          )),
          IconButton(
              onPressed: () {
                print(text.text);
                Firebasedat().creatUser(name: text.text);
              },
              icon: Icon(Icons.av_timer))
        ],
      ),
    );
  }
}
