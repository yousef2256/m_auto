import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:m_auto/core/helpers/spaser.dart';
import 'package:m_auto/core/utils/texts/text_styles.dart';
import 'package:m_auto/core/widgets/custome_phone_feald.dart';
import 'package:m_auto/core/widgets/custome_dropdown.dart';
import 'package:m_auto/core/widgets/custome_text_feald.dart';
import 'package:m_auto/features/home_fetures/ui/widgets/lead_status.dart';
import 'package:m_auto/features/home_fetures/ui/widgets/profile_image.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' My Profile', style: TextStyles.text18px600wBlack),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          children: [
            verticalSpace(20.h),
            // profile image
            const ProfileImage(),
            verticalSpace(20.h),

            // status
            const LeadStatus(),

            // name
            const CustomeTextFeald(
              hintText: 'test',
              labelText: 'Name',
              isReadOnly: true,
            ),

            // email
            const CustomeTextFeald(
              hintText: 'test@gmail.com',
              labelText: 'Email',
              isReadOnly: true,
            ),

            // phone
            const CustomePhoneField(
              lableText: 'Phone',
              hintText: '0102258763',
              isReadOnly: true,
            ),

            CustomeDropdown(
              labelText: 'Pranch Name',
              hintText: 'Select pranch name',
              items: const [
                DropdownMenuItem(value: 'Cairo', child: Text('Cairo')),
                DropdownMenuItem(value: 'Mansora', child: Text('Mansora')),
                DropdownMenuItem(value: 'Alex', child: Text('Alex')),
              ],
              onChanged: (value) {
                // TODO: Handle pranch name change
              },
            ),
          ],
        ),
      ),
    );
  }
}
