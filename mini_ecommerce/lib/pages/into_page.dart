import 'package:flutter/material.dart';
import 'package:mini_ecommerce/components/my_button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.shopping_bag,
              size: 72,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            const SizedBox(height: 25),
            const Text('MInimal Shop',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
            const SizedBox(height: 25),
            Text('Premium Quality Products',
                style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary)),
            const SizedBox(height: 20),
            MyButton(
                onTap: () {
                  Navigator.pushNamed(context, '/shop_page');
                },
                child: const Icon(Icons.arrow_forward)),
          ],
        ),
      ),
    );
  }
}
