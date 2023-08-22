import 'package:ef_test/features/dashboard/screens/dashboard_screen.dart';
import 'package:ef_test/features/role_management/bloc/role_management_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_)=>RoleManagementCubit())
      ],
      child: const MaterialApp(
        home: Dashboardscreen(),
      ),
    );
  }
}