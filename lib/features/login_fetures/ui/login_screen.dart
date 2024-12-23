import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:m_auto/core/helpers/navigations.dart';
import 'package:m_auto/core/helpers/spaser.dart';
import 'package:m_auto/core/routes/routes.dart';
import 'package:m_auto/core/theme/app_colors.dart';
import 'package:m_auto/core/utils/constets/images_constents.dart';
import 'package:m_auto/core/utils/texts/text_styles.dart';
import 'package:m_auto/core/widgets/custome_button.dart';
import 'package:m_auto/core/widgets/custome_text_button.dart';
import 'package:m_auto/core/widgets/custome_text_feald.dart';
import 'package:m_auto/features/login_fetures/logic/login_cubit.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Center(
          child: GestureDetector(
            onTap: () {
              FocusScope.of(context).unfocus();
            },
            child: SingleChildScrollView(
              child: BlocConsumer<LoginCubit, LoginState>(
                listener: (context, state) {
                  if (state is SignInSuccess) {
                    context.pushNamedAndRemoveUntil(
                      Routes.layout,
                      predicate: (Route<dynamic> route) => false,
                    );
                  } else if (state is SignInFailure) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(state.errorMessage),
                      ),
                    );
                  }
                },
                builder: (context, state) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // welcome text
                      Text(
                        "W e l c o m e   B a c k !  ✋",
                        style: TextStyles.text14px400wBlack,
                      ),
                      // spaser
                      verticalSpace(30.h),

                      // app logo
                      Container(
                        width: 125.w,
                        alignment: Alignment.center,
                        child: Image.asset(
                          ImagesConstents.appLogo2,
                        ),
                      ),

                      // spaser
                      verticalSpace(40.h),

                      // email text field
                      CustomeTextFeald(
                        labelText: "Email Address*",
                        hintText: "Email@example.com",
                        controller: context.read<LoginCubit>().emailController,
                        textInputType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,

                        /// TODO: Add Email Validator
                        // validator: Validations.emailValidator,
                      ),

                      // spaser
                      verticalSpace(10.h),

                      // password text field
                      CustomeTextFeald(
                        labelText: "Password*",
                        hintText: "*************",
                        controller:
                            context.read<LoginCubit>().passwordController,
                        textInputType: TextInputType.visiblePassword,
                        textInputAction: TextInputAction.done,
                        obscureText: context.read<LoginCubit>().showPassword,

                        /// TODO: Add Password Validator
                        // validator: Validations.passwordValidator,
                        suffixIcon: IconButton(
                          onPressed: () {
                            context.read<LoginCubit>().changeShowPassword();
                          },
                          icon: Icon(
                            color: AppColors.textGrey,
                            context.read<LoginCubit>().showPassword
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
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

                      verticalSpace(15.h),

                      // login button
                      state is SignInLoadingState
                          ? const Center(
                              child: CircularProgressIndicator(),
                            )
                          : CustomeButton(
                              text: "Login",
                              onPressed: () {
                                context.read<LoginCubit>().signIn();
                              },
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
      ),
    );
  }
}
