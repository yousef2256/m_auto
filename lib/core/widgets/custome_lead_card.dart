import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:m_auto/core/widgets/custome_small_button.dart';
import '../helpers/spaser.dart';
import '../theme/app_colors.dart';
import '../utils/texts/text_styles.dart';

class CustomeLeadsCard extends StatelessWidget {
  final Function()? whenAccepted;
  final Function()? whenRejected;
  final Function()? whenPending;
  final String? leadName;
  final String? carBrand;
  final String? leadTitle;
  final String? leadDate;
  final Color? color;

  const CustomeLeadsCard({
    super.key,
    this.whenAccepted,
    this.whenPending,
    this.whenRejected,
    this.leadName,
    this.carBrand,
    this.leadTitle,
    this.leadDate,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.primarybackground,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 50.h,
                    width: 50.w,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.primarywhite,
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.secondryGray,
                          blurRadius: 6,
                          spreadRadius: 0,
                          offset: Offset(0, 1),
                        ),
                      ],
                    ),
                    child: Text("B", style: TextStyles.text16px600wBlack),
                  ),
                  horizontalSpace(9),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // lead name
                      Text(leadName ?? '', style: TextStyles.text14px600wBlack),

                      // car brand
                      Text(carBrand ?? '', style: TextStyles.text14px600wGrey),

                      // lead date
                      if (leadDate != null)
                        Text(leadDate!, style: TextStyles.text12px400wGrey),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  // accept button
                  if (whenAccepted != null)
                    CustomeSmallButton(
                      onTap: whenAccepted ?? () {},
                      egeInset: 9,
                      color: AppColors.smanticsgreen,
                      icon: Icon(Icons.check,
                          size: 18.r, color: AppColors.primarywhite),
                    ),

                  // reject button
                  if (whenRejected != null)
                    CustomeSmallButton(
                      onTap: whenRejected ?? () {},
                      egeInset: 9,
                      borderColor: AppColors.primary,
                      icon: Icon(Icons.close,
                          size: 18.r, color: AppColors.primary),
                    ),

                  // call button
                  if (whenPending != null)
                    CustomeSmallButton(
                      onTap: whenPending ?? () {},
                      egeInset: 9,
                      borderColor: AppColors.primary,
                      icon: Icon(Icons.call,
                          size: 18.r, color: AppColors.primary),
                    ),
                ],
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 15.h),
            padding: EdgeInsets.symmetric(vertical: 9.h, horizontal: 20.w),
            decoration: BoxDecoration(
              color: color ?? AppColors.summaryCardsGreen,
              borderRadius: BorderRadius.circular(50.r),
            ),

            // title text
            child: Text(leadTitle ?? '', style: TextStyles.text14px600wBlack),
          ),
        ],
      ),
    );
  }
}
