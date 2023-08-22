import 'package:ef_test/features/role_management/bloc/role_management_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardDrawer extends StatelessWidget {
  const DashboardDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .2,
      color: Colors.white,
      child: BlocBuilder<RoleManagementCubit, RoleManagementState>(
          builder: (context, state) {
        if (state is RoleManagementLoadingState) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is RoleManagementLoadeDState) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(
                state.config.allowedMenu.length,
                (index) => Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(state.config.allowedMenu[index].toString()),
                    )),
          );
        } else if (state is RoleManagementErrorState) {
          return Center(
            child: Text(state.errorMsg),
          );
        } else {
          return const Center(
            child: Text('This state is not configured'),
          );
        }
      }),
    );
  }
}
