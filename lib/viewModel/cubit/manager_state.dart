part of 'manager_cubit.dart';

@immutable
sealed class ManagerState {}

final class ManagerInitial extends ManagerState {}

final class ManagerReBuild extends ManagerState {}
