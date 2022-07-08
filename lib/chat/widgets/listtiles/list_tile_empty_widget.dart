import 'package:flutter/material.dart';

/// Dibuja una carta vacia para cuando el estado
/// del carrito se encuentra cargando
class ListTileEmptyWidget extends StatefulWidget {
  const ListTileEmptyWidget({
    super.key,
  });

  @override
  State<ListTileEmptyWidget> createState() => _ListTileEmptyWidgetState();
}

class _ListTileEmptyWidgetState extends State<ListTileEmptyWidget>
    with SingleTickerProviderStateMixin {
  AnimationController? _controller;

  late Animation gradientPosition;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 1500),
      vsync: this,
    );

    gradientPosition = Tween<double>(
      begin: -3,
      end: 10,
    ).animate(
      CurvedAnimation(parent: _controller!, curve: Curves.linear),
    )..addListener(() {
        setState(() {});
      });

    _controller!.repeat();
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      width: screenSize.width * 0.9,
      height: screenSize.height * 0.1,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        gradient: LinearGradient(
          begin: Alignment(gradientPosition.value as double, 0),
          end: const Alignment(-1, 0),
          colors: const [
            Color.fromARGB(13, 255, 253, 253),
            Color.fromARGB(26, 153, 151, 151),
            Color.fromARGB(13, 72, 71, 71)
          ],
        ),
      ),
    );
  }
}
