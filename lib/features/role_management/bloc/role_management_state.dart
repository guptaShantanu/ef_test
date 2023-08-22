part of 'role_management_bloc.dart';

abstract class RoleManagementState {}

class RoleManagementLoadingState extends RoleManagementState {
  final String loadingMsg;

  RoleManagementLoadingState(this.loadingMsg);
}

class RoleManagementLoadeDState extends RoleManagementState {
  final RoleConfig config;

  RoleManagementLoadeDState(this.config);
}

class RoleManagementErrorState extends RoleManagementState {
  final String errorMsg;

  RoleManagementErrorState(this.errorMsg);
}
