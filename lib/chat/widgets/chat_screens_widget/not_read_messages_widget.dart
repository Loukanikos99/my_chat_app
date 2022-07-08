import 'package:flutter/material.dart';

class NotReadMessagesWidget extends StatelessWidget {
  const NotReadMessagesWidget(
    this.timeAgo, {
    super.key,
  });

  final String? timeAgo;

  @override
  Widget build(BuildContext context) {
    return timeAgo != null
        ? Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '$timeAgo m ago',
                style: const TextStyle(
                  fontSize: 12,
                ),
              ),
              const SizedBox(height: 10),
              Container(
                height: 15,
                width: 15,
                decoration: BoxDecoration(
                  color: Colors.blue[900],
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
            ],
          )
        : const SizedBox();
  }
}
