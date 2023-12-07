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
    ),SizedBox(height: 32),
      Builder(
        builder: (context) => ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => BuyNowPage()),
            );
          },
          child: Text('Buy Now'),
        ),
      ),
      Text(
        'Perfume Name',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
      SizedBox(height: 16),
      Image.network(
        'https://manceraparfums.com/1045-grid_product_small_crop/amore-caffe.jpg',
        height: 200,
        width: 200,
      ),
      SizedBox(height: 16),
      Text(
        'Price: 1500.00 \৳',
        style: TextStyle(fontSize: 18),
      ),
      SizedBox(height: 16),
      Text(
        'About:  Middle notes are Ice cream and Vanilla; base notes are Brown sugar, Vanilla and Ambergris.',
        style: TextStyle(fontSize: 16),
      ),
      SizedBox(height: 32),
      Builder(
        builder: (context) => ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => BuyNowPage()),
            );
          },
          child: Text('Buy Now'),
        ),
      ),
    ],
    ),
    ),
        ),
    );
  }
}
class BuyNowPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buy Now'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Choose Payment Method',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                PaymentMethodButton(imageUrl: 'https://logos-download.com/wp-content/uploads/2022/01/BKash_Logo-700x287.png'),
                PaymentMethodButton(imageUrl: 'https://seeklogo.com/images/D/dutch-bangla-rocket-logo-B4D1CC458D-seeklogo.com.png'),
                PaymentMethodButton(imageUrl: 'https://freelogopng.com/images/all_img/1679248787Nagad-Logo.png'),
                PaymentMethodButton(imageUrl: 'https://w7.pngwing.com/pngs/698/862/png-transparent-credit-card-logo-encapsulated-postscript-visa-eps-blue-cdr-text.png'),
                PaymentMethodButton(imageUrl: 'https://pngimg.com/d/mastercard_PNG23.png'),

              ],
            ),
            SizedBox(height: 16),
            DropdownButton<String>(
              items: ['Bkash', 'Rocket', 'Nagad','VISA','Master Card']
                  .map((String value) => DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              ))
                  .toList(),
              onChanged: (String? value) {
                // Handle dropdown value change
              },
              hint: Text('Select an option'),
            ),
            SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Go Back'),
            ),
          ],
        ),
      ),
    );
  }
}
class PaymentMethodButton extends StatelessWidget {
  final String imageUrl;

  const PaymentMethodButton({Key? key, required this.imageUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(imageUrl),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(9),
      ),
    );
  }
}
