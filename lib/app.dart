import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:demo/core/constants/app_theme.dart';

import 'core/routes/app_router.dart';
import 'presentation/screens/auth/bloc/auth_bloc.dart';

class MyApp extends StatelessWidget {
  final AppRouter _appRouter = AppRouter();

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return MaterialApp(
          title: 'Flutter Clean Architecture',
          theme: AppTheme.lightTheme,
          onGenerateRoute: _appRouter.onGenerateRoute,
          initialRoute: state is AuthAuthenticated ? '/home' : '/',
        );
      },
    );
  }
}
