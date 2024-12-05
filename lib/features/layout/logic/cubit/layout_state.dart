part of 'layout_cubit.dart';

@immutable
sealed class LayoutState {}

final class LayoutInitial extends LayoutState {}

final class ButtomNavigatinBarIndexChanged extends LayoutState {
  final int index;
  ButtomNavigatinBarIndexChanged({required this.index});
}
