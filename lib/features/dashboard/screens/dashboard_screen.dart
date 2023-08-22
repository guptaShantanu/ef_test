import 'package:ef_test/features/dashboard/screens/dashboard_drawer.dart';
import 'package:ef_test/features/role_management/bloc/role_management_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Dashboardscreen extends StatelessWidget {
  const Dashboardscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Eureka Forbes Test - Role Config'),
      ),
      body: Row(
        children: [
          const DashboardDrawer(),
          Center(
            child: BlocBuilder<RoleManagementCubit, RoleManagementState>(
                builder: (context, state) {
              if (state is RoleManagementLoadingState) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state is RoleManagementLoadeDState) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    if (state.config.role == 'Role 1')
                      MaterialButton(
                        onPressed: () {},
                        color: Colors.red,
                        child: const Text('CTA 1'),
                      ),
                    if (state.config.role == 'Role 2')
                      MaterialButton(
                        onPressed: () {},
                        color: Colors.green,
                        child: const Text('CTA 2'),
                      )
                  ],
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
          ),
        ],
      ),
    );
  }
}
