import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Product App',
      theme: ThemeData(
        primarySwatch: Colors.lime,
      ),
      home: ProductDetailsPage(),
    );
  }
}
class ProductDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Perfume Information'),
        ),
        body: Padding(
        padding: const EdgeInsets.all(16.0),
    child: SingleChildScrollView(
    scrollDirection: Axis.vertical,
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
    Text(
    'Perfume Name',
    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
    ),
    SizedBox(height: 16),
    Image.network(
    'https://assets.vogue.com/photos/6054ce48ba2b50871bd1d368/3:4/w_748%2Cc_limit/slide_8.jpg',
    height: 200,
    width: 200,
    ),
    SizedBox(height: 16),
    Text(
    'Price: 2000.00 \৳',
    style: TextStyle(fontSize: 18),
    ),
    SizedBox(height: 16),
    Text(
    'About: The fragrance unfurls a powerful and noble trail.',
    style: TextStyle(fontSize: 16),
    ),
