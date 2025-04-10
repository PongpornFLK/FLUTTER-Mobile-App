import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

// component Container
class BoxDetail extends StatelessWidget {
  final String title;
  final double amount;
  final double size;
  final Color color;

  BoxDetail(this.title, this.amount, this.size, this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(title, style: TextStyle(color: Colors.white)),
                Padding(
                  padding: const EdgeInsets.only(left: 3),
                  child: Text(
                    // amount.toString(),
                    '${NumberFormat('#,###.##').format(amount)}',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
