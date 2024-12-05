import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:m_auto/core/theme/app_colors.dart';
import 'package:m_auto/features/layout/logic/cubit/layout_cubit.dart';

class Layout extends StatelessWidget {
  const Layout({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LayoutCubit, LayoutState>(
      builder: (context, state) {
        return Scaffold(
          body: context
              .read<LayoutCubit>()
              .screens[context.read<LayoutCubit>().currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            elevation: 5,
            onTap: (index) => context
                .read<LayoutCubit>()
                .buttomNavigatinBarIndexChanged(index),
            selectedItemColor: AppColors.primary,
            unselectedItemColor: AppColors.primarygrey,
            type: BottomNavigationBarType.fixed,
            showUnselectedLabels: true,
            enableFeedback: false,
            currentIndex: context.watch<LayoutCubit>().currentIndex,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite_border_rounded), label: 'Fivoret'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.people_rounded), label: 'Leads'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.calendar_month_rounded), label: 'Activity'),
            ],
          ),
        );
      },
    );
  }
}
