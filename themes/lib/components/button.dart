import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Widget? child;
  final Color? color;
  final void Function()? onTap;

  const MyButton({
    super.key,
    required this.onTap,
    required this.color,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8),
        ),
        height: 100,
        width: 100,
        padding: const EdgeInsets.all(50),
        child: Center(child: child),
      ),
    );
  }
}
