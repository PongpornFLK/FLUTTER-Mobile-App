import 'package:flutter/material.dart';

class CustomLongContainer extends StatelessWidget {
  final Color color;
  final IconData icon;
  final String title;
  final String value;
  final Widget? child;

  const CustomLongContainer({
    super.key,
    this.color = Colors.blue,
    this.child,
    required this.icon,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        decoration: BoxDecoration(
          // ignore: deprecated_member_use
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
                  Icon(icon, size: 30, color: Colors.white),
                  Padding(
                    padding: const EdgeInsets.only(left: 3),
                    child: Text(
                      title,
                      style: TextStyle(
                        fontFamily: "Amiko",
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
