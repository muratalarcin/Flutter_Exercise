import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final String title;
  final String body;
  final String photoUrl;

  const DetailPage({
    Key? key,
    required this.title,
    required this.body,
    required this.photoUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail: $title"),
      ),
      body: Column(
        children: [
          Image.network(
            photoUrl,
            height: 400,
            width: 400,
          ),
          Center(
            child: SizedBox(
              height: 300,
              width: 300,
              child: Card(
                color: Colors.blueGrey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Başlık şekli $title"),
                    Text("Details for $body"),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
