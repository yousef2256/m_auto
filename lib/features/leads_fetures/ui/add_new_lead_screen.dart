import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:m_auto/core/helpers/spaser.dart';
import 'package:m_auto/core/utils/texts/text_styles.dart';
import 'package:m_auto/core/widgets/custome_button.dart';
import 'package:m_auto/core/widgets/custome_dripdown_and_textfeald.dart';
import 'package:m_auto/core/widgets/custome_dropdown.dart';
import 'package:m_auto/core/widgets/custome_text_feald.dart';

class AddNewLeadScreen extends StatelessWidget {
  const AddNewLeadScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add New Lead', style: TextStyles.text18px600wBlack),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: SingleChildScrollView(
            child: Column(
              children: [
                // name text field
                const CustomeTextFeald(
                  labelText: 'Name',
                  hintText: 'Enter your name',
                  textInputType: TextInputType.name,
                  textInputAction: TextInputAction.next,
                ),

                // Mobile Number dropdown with text field
                const CustomeDripdownAndTextFeald(
                  lableText: 'Mobile Number',
                  hintText: 'Enter your mobile number',
                  textInputType: TextInputType.phone,
                ),

                // car Category dropdown
                CustomeDropdown(
                  labelText: 'Car Category',
                  hintText: 'Select car category',
                  items: const [
                    DropdownMenuItem(value: 'sedan', child: Text('Sedan')),
                    DropdownMenuItem(value: 'suv', child: Text('SUV')),
                    DropdownMenuItem(
                        value: 'hatchback', child: Text('Hatchback')),
                  ],
                  onChanged: (value) {
                    // TODO: Handle car category change
                  },
                ),

                // car model dropdown
                CustomeDropdown(
                  labelText: 'Car Model',
                  hintText: 'Select car model',
                  items: const [
                    DropdownMenuItem(value: 'sedan', child: Text('Sedan')),
                    DropdownMenuItem(value: 'suv', child: Text('SUV')),
                    DropdownMenuItem(
                        value: 'hatchback', child: Text('Hatchback')),
                  ],
                  onChanged: (value) {
                    // TODO: Handle car model change
                  },
                ),

                // pranch name dropdown
                CustomeDropdown(
                  labelText: 'Pranch Name',
                  hintText: 'Select pranch name',
                  items: const [
                    DropdownMenuItem(value: 'sedan', child: Text('Sedan')),
                    DropdownMenuItem(value: 'suv', child: Text('SUV')),
                    DropdownMenuItem(
                        value: 'hatchback', child: Text('Hatchback')),
                  ],
                  onChanged: (value) {
                    // TODO: Handle pranch name change
                  },
                ),

                // sales person text field
                const CustomeTextFeald(
                  labelText: 'Sales Person',
                  hintText: 'Enter sales person',
                  textInputType: TextInputType.name,
                  textInputAction: TextInputAction.next,
                ),

                // note textfeald
                const CustomeTextFeald(
                  labelText: 'Note',
                  hintText: 'text...',
                  textInputType: TextInputType.multiline,
                  textInputAction: TextInputAction.done,
                ),

                // spacer
                verticalSpace(20.h),

                // submit button
                CustomeButton(
                  text: 'Submit',
                  onPressed: () {
                    // TODO: Handle submit
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
