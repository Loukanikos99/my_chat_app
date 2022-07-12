import 'package:flutter/material.dart';

class LoadingBodyRoomWidget extends StatefulWidget {
  const LoadingBodyRoomWidget({super.key});

  @override
  State<LoadingBodyRoomWidget> createState() => _LoadingBodyRoomWidgetState();
}

class _LoadingBodyRoomWidgetState extends State<LoadingBodyRoomWidget>
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        EmptyChatContainerWidget(
          width: screenSize.width * 0.8,
          height: screenSize.height * 0.08,
          gradientPosition: gradientPosition,
        ),
        EmptyChatContainerWidget(
          width: screenSize.width * 0.6,
          height: screenSize.height * 0.08,
          gradientPosition: gradientPosition,
        ),
        EmptyChatContainerWidget(
          width: screenSize.width * 0.4,
          height: screenSize.height * 0.08,
          gradientPosition: gradientPosition,
        ),
      ],
    );
  }
}

class EmptyChatContainerWidget extends StatelessWidget {
  const EmptyChatContainerWidget({
    super.key,
    required this.width,
    required this.height,
    required this.gradientPosition,
  });

  final Animation gradientPosition;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(15),
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
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
