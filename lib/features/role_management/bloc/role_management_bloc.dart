import 'package:ef_test/features/dashboard/data/role_config.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'role_management_state.dart';

class RoleManagementCubit extends Cubit<RoleManagementState> {
  RoleManagementCubit() : super(RoleManagementLoadingState('...')) {
    _loadRoleConfiguration();
  }

  void _loadRoleConfiguration() async {
    emit(RoleManagementLoadeDState(RoleConfig.role2()));
    await Future.delayed(const Duration(seconds: 5));
    emit(RoleManagementLoadeDState(RoleConfig.role1()));
  }
}
