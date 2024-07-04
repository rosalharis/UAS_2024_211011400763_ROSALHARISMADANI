import 'package:flutter/material.dart';
import 'crypto_model.dart';

class CryptoDetailPage extends StatelessWidget {
  final Crypto crypto;

  const CryptoDetailPage({Key? key, required this.crypto}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${crypto.name} (${crypto.symbol})'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Price: \$${crypto.priceUsd.toStringAsFixed(2)}',
              style: const TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              '24h Change: ${crypto.percentChange24h}%',
              style: TextStyle(
                fontSize: 18,
                color: crypto.percentChange24h < 0 ? Colors.red : Colors.green,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Market Cap: \$${crypto.marketCapUsd.toStringAsFixed(2)}',
              style: const TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              'Volume 24h: \$${crypto.volume24.toStringAsFixed(2)}',
              style: const TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              'Circulating Supply: ${crypto.csupply}',
              style: const TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
