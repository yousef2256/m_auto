import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:m_auto/core/theme/app_colors.dart';
import 'package:m_auto/core/utils/constets/images_constents.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 120.w,
        height: 120.h,
        child: Stack(
          alignment: Alignment.center,
          children: [
            CircleAvatar(
              foregroundImage: const AssetImage(ImagesConstents.userphoto),
              radius: 50.r,
            ),
            // change image button
            Positioned(
              right: 0,
              bottom: 0,
              child: Container(
                padding: EdgeInsets.all(8.r),
                // margin: EdgeInsets.all(8.r),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: AppColors.primary),
                  borderRadius: BorderRadius.circular(15.r),
                ),
                child: const Icon(Icons.edit, color: AppColors.primary),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
