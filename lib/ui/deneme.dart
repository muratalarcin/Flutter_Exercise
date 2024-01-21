import 'package:flutter/material.dart';
import 'dart:math';

class Deneme extends StatelessWidget {
  const Deneme({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const SizedBox(
          width: 200,
          child: Card(
            elevation: 10,
            color: Colors.lightBlue,
            child: Center(
              child: Text(
                "İlk Tasarım",
                style: TextStyle(fontSize: 30),
              ),
            ),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return _CardDesign(
            title: _generateRandomString(),
            body: _generateRandomString(),
          );
        },
      ),
    );
  }

  String _generateRandomString() {
    const chars = 'abcdefghijklmnopqrstuvwxyz0123456789';
    Random random = Random();
    String result = '';
    for (int i = 0; i < 10; i++) {
      result += chars[random.nextInt(chars.length)];
    }
    return result;
  }
}

class _CardDesign extends StatelessWidget {
  final String title;
  final String body;

  const _CardDesign({required this.title, required this.body});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blue,
      shadowColor: Colors.red,
      elevation: 20,
      child: SizedBox(
        height: 130,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.amber,
                ),
                child: Image.asset(
                  "assets/ic_head_set.png",
                  width: 71,
                  height: 71,
                ),
              ),
              Card(
                margin: const EdgeInsets.only(left: 16),
                color: Colors.blueAccent,
                elevation: 20,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Title: $title",
                        style: const TextStyle(
                          color: Colors.amber,
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        "Body: $body",
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
