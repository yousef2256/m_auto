import 'package:flutter/material.dart';
import 'package:m_auto/core/utils/texts/text_styles.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications', style: TextStyles.text18px600wBlack),
      ),
      body: const Column(
        children: [
          // search bar & filter
          SearchBar(),
        ],
      ),
    );
  }
}
