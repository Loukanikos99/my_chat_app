import 'package:flutter/material.dart';

class ChatSearchBarWidget extends StatelessWidget {
  const ChatSearchBarWidget({
    super.key,
    required this.controller,
    required this.onChanged,
  });

  final TextEditingController? controller;
  final Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Colors.grey[200],
      ),
      height: screenSize.height * 0.045,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Row(
            children: [
              const Icon(Icons.search_rounded),
              const SizedBox(width: 15),
              SizedBox(
                height: screenSize.height * 0.045,
                width: screenSize.width * 0.7,
                child: TextField(
                  controller: controller,
                  decoration: const InputDecoration(
                    hintText: 'Buscar un chat',
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                  ),
                  onChanged: onChanged,
                  style: const TextStyle(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
