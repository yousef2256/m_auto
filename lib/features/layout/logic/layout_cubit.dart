import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:m_auto/features/activiteys_fetures/ui/activitys_screen.dart';
import 'package:m_auto/features/favoret_fetures/ui/favorets_screen.dart';
import 'package:m_auto/features/home_fetures/ui/home_screen.dart';
import 'package:m_auto/features/leads_fetures/ui/leads_screen.dart';

part 'layout_state.dart';

class LayoutCubit extends Cubit<LayoutState> {
  LayoutCubit() : super(LayoutInitial());

  // List of screens
  final List<Widget> screens = [
    const HomeScreen(),
    const FavoretsScreen(),
    const LeadsScreen(),
    const ActivitysScreen(),
  ];

  int currentIndex = 0;
  void buttomNavigatinBarIndexChanged(int index) {
    currentIndex = index;
    emit(ButtomNavigatinBarIndexChanged(index: index));
  }
}
