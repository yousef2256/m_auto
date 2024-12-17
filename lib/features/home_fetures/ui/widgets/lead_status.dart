import 'package:flutter/material.dart';
import 'package:m_auto/core/theme/app_colors.dart';
import 'package:m_auto/core/utils/texts/text_styles.dart';

class LeadStatus extends StatelessWidget {
  const LeadStatus({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Status', style: TextStyles.text14px700wGrey),
            Transform.scale(
              scale: 0.7,
              child: Switch(
                value: false,
                activeTrackColor: AppColors.primary,
                activeColor: AppColors.primary,
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                onChanged: (value) {},
              ),
            ),
          ],
        ),
        Text('You are not available to accsept leads',
            style: TextStyles.text12px400wGrey),
      ],
    );
  }
}
