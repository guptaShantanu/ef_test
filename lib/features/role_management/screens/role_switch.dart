import 'package:ef_test/features/role_management/bloc/role_management_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RoleSwitch extends StatelessWidget {
  const RoleSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RoleManagementCubit, RoleManagementState>(
        builder: (context, state) {
      if (state is RoleManagementLoadeDState) {
        return Switch(
            value: state.config.role == 'Role 2',
            onChanged: (val) {
              if (val) {
                BlocProvider.of<RoleManagementCubit>(context)
                    .enableSecondRole();
              } else {
                BlocProvider.of<RoleManagementCubit>(context).enableFirstRole();
              }
            });
      } else {
        return const SizedBox.shrink();
      }
    });
  }
}
