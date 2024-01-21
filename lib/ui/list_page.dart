import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  final String appBarTitle = 'Benim ilk listem';

  // Bir liste oluşturduk ve her elemanı bir map olarak tanımladık
  // Map, anahtar-değer çiftleri içeren bir veri yapısıdır
  // Bu örnekte, her map'in 'name' ve 'id' adında iki anahtarı vardır
  // Bu anahtarların değerleri, ad soyad ve tc numarası olarak belirlenmiştir
  List<Map<String, String>> items = [
    {'name': 'Ali Yılmaz', 'id': '12345678901'},
    {'name': 'Ayşe Demir', 'id': '23456789012'},
    {'name': 'Mehmet Öztürk', 'id': '34567890123'},
    {'name': 'Fatma Çelik', 'id': '45678901234'},
    {'name': 'Ahmet Kaya', 'id': '56789012345'},
    {'name': 'Zeynep Yıldız', 'id': '67890123456'},
    {'name': 'Hasan Doğan', 'id': '78901234567'},
    {'name': 'Elif Karaca', 'id': '89012345678'},
    {'name': 'Murat Akın', 'id': '90123456789'},
    {'name': 'Selin Arslan', 'id': '01234567890'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appBarTitle),
      ),
      body: ListView.builder(
        // Listenin uzunluğunu belirledik
        itemCount: items.length,
        // Her eleman için bir widget oluşturduk
        itemBuilder: (context, index) {
          // Listenin index numaralı elemanını alıp bir değişkene atadık
          // Bu değişken bir map'tir
          Map<String, String> item = items[index];
          // Bir card widget'ı döndürdük
          return Card(
            color: Colors.amber,
            // Card widget'ının içinde bir sütun widget'ı kullandık
            // Sütun widget'ı, çocuk widget'larını dikey olarak sıralar
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                // Çocuk widget'larını ortalamak için mainAxisAlignment özelliğini kullandık
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                // Çocuk widget'larını tanımladık
                children: [
                  Text(
                    item['name']!,
                    style: _textStyle(),
                  ),
                  Text(
                    item['id']!,
                    style: _textStyle(),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  TextStyle _textStyle() {
    return const TextStyle(
      color: Colors.blue,
    );
  }
}
