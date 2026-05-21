import 'package:flutter/material.dart';

import 'package:flutter_book_search/flutter_book_search.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: const DemoPage(),
    );
  }
}

class DemoPage extends StatelessWidget {
  const DemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Book Search')),

      body: BookSearch(
        showGridView: false,

        books: const [
          BookItem(title: 'Atomic Habits', author: 'James Clear'),

          BookItem(title: 'Harry Potter', author: 'J.K Rowling'),

          BookItem(title: 'Rich Dad Poor Dad', author: 'Robert Kiyosaki'),
          BookItem(
            title: "Dear writter you need to quite",
            author: "becca syme",
          ),
          BookItem(title: "Writers and lovers", author: "lily king"),
        ],
      ),
    );
  }
}
