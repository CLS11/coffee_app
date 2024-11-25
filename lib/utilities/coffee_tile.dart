import 'package:flutter/material.dart';

class CoffeeTile extends StatelessWidget {
  const CoffeeTile({
    required this.coffeeImagePath,
    required this.coffeeName,
    required this.coffeePrice,
    super.key,
  });
  final String coffeeImagePath;
  final String coffeeName;
  final String coffeePrice;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 25,
        bottom: 25,
      ),
      child: Container(
        padding: EdgeInsets.all(12),
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.black54,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(coffeeImagePath),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 12,
                horizontal: 8,
              ),
              child: Column(
                children: [
                  Text(
                    coffeeName,
                    style: TextStyle(fontSize: 20),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Text(
                    'With Almond Milk',
                    style: TextStyle(
                      color: Colors.grey[700],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    coffeePrice,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: const Icon(Icons.add),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
