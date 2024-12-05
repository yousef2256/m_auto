import 'package:flutter/material.dart';
import 'package:m_auto/core/utils/texts/text_styles.dart';

class YourLeadsSummary extends StatelessWidget {
  const YourLeadsSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Your Leads Summary', style: TextStyles.text14px600wBlack),
      ],
    );
  }
}
