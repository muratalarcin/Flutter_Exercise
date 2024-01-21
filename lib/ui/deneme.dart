import 'package:flutter/material.dart';
import 'package:flutterexam/repo/helper.dart';
import 'dart:math';

import 'package:flutterexam/ui/detail_page.dart';

class Deneme extends StatefulWidget {
  const Deneme({Key? key}) : super(key: key);

  @override
  State<Deneme> createState() => _DenemeState();
}

class _DenemeState extends State<Deneme> {
  final PhotoHelper photoHelper = PhotoHelper();

  @override
  Widget build(BuildContext context) {
    List<String> manualList = [
      "Veri 1",
      "Veri 2",
      "Veri 3",
      "Veri 4",
      "Veri 5",
      "Veri 6",
      "Veri 7",
      "Veri 8",
      "Veri 9",
      "Veri 10",
      "Veri 11",
      "Veri 12",
      "Veri 13",
      "Veri 14",
      "Veri 15",
      "Veri 16",
      "Veri 17",
      "Veri 18",
      "Veri 19",
      "Veri 20",
    ];

    return Scaffold(
      appBar: _myAppBar(),
      body: ListView.builder(
        itemCount: manualList.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              _openDetailPage(context, manualList[index], _generateRandomString(), photoHelper.getRandomPhotoUrl());
            },
            child: _CardDesign(
              title: manualList[index],
              body: _generateRandomString(),
              photoUrl: photoHelper.getRandomPhotoUrl(),
            ),
          );
        },
      ),
    );
  }

  AppBar _myAppBar() {
    return AppBar(
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
    );
  }

  String _generateRandomString() {
    const int stringLength = 10;
    const String chars = 'abcdefghijklmnopqrstuvwxyz0123456789';

    Random random = Random();
    String result = '';
    for (int i = 0; i < stringLength; i++) {
      result += chars[random.nextInt(chars.length)];
    }
    return result;
  }

  void _openDetailPage(
    BuildContext context,
    String title,
    String body,
    String photoUrl,
  ) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => DetailPage(
          title: title,
          body: body,
          photoUrl: photoUrl,
        ),
      ),
    );
  }
}

class _CardDesign extends StatelessWidget {
  final String title;
  final String body;
  final String photoUrl;

  const _CardDesign({required this.title, required this.body, required this.photoUrl});

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
              _buildImageContainer(photoUrl),
              _buildDetailsCard(title, body),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildImageContainer(String photoUrl) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.amber,
      ),
      child: Image.network(
        photoUrl,
        height: 100,
        width: 100,
      ),
    );
  }

  Widget _buildDetailsCard(String title, String body) {
    return Card(
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
    );
  }
}
