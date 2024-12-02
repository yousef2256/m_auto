import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:m_auto/core/helpers/spaser.dart';
import 'package:m_auto/core/theme/app_colors.dart';
import 'package:m_auto/core/utils/constets/images_constents.dart';
import 'package:m_auto/core/utils/texts/text_styles.dart';
import 'package:m_auto/core/widgets/custome_button.dart';
import 'package:m_auto/core/widgets/custome_text_button.dart';
import 'package:m_auto/core/widgets/custome_text_feald.dart';
import 'package:m_auto/features/login_fetures/logic/cubit/login_cubit.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Center(
          child: SingleChildScrollView(
            child: BlocConsumer<LoginCubit, LoginState>(
              listener: (context, state) {},
              builder: (context, state) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // app logo
                    Container(
                      width: 125.w,
                      alignment: Alignment.center,
                      child: Image.asset(
                        ImagesConstents.appLogo2,
                      ),
                    ),
                    // spaser
                    verticalSpace(30.h),

                    // welcome text
                    Text(
                      "Hi, Welcome Back! ✋",
                      style: TextStyles.text22px700w,
                    ),
                    // spaser
                    verticalSpace(10.h),

                    // Email text
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Email Address*",
                        style: TextStyles.text14px700wGrey,
                      ),
                    ),

                    verticalSpace(8.h),

                    // email text field
                    const CustomeTextFeald(
                      hintText: "Email@example.com",
                    ),

                    // spaser
                    verticalSpace(10.h),

                    // password text
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Password*",
                        style: TextStyles.text14px700wGrey,
                      ),
                    ),
                    verticalSpace(8.h),

                    // password text field
                    const CustomeTextFeald(
                      hintText: "*************",
                      suffixIcon: Icon(
                        Icons.visibility,
                        color: AppColors.textGrey,
                      ),
                    ),

                    verticalSpace(15.h),

                    // rememper me
                    Row(
                      children: [
                        Checkbox(
                          value: context.read<LoginCubit>().rememberMe,
                          onChanged: (value) {
                            context.read<LoginCubit>().changeRememberMe();
                          },
                        ),
                        Text(
                          "Remember me",
                          style: TextStyles.text14px400wBlack,
                        ),
                      ],
                    ),

                    verticalSpace(50.h),

                    // login button
                    CustomeButton(
                      text: "Login",
                      onPressed: () {},
                    ),

                    verticalSpace(10.h),

                    // forget password text
                    CustomTextButton(
                      text: "Forget Password ?",
                      onPressed: () {},
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
