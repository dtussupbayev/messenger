import 'package:flutter/material.dart';

import 'chats_widgets.dart';

class ChatsScreen extends StatefulWidget {
  const ChatsScreen({super.key});

  @override
  State<ChatsScreen> createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 24,
        horizontal: 24,
      ),
      child: Column(
        children: [
          const Header(),
          Expanded(
            child: ListView(
              children: const [
                ChatsListItem(),
                ChatsListItem(),
                ChatsListItem(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
