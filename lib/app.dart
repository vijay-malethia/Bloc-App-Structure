import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:demo/presentation/routes/app_router.dart';
import 'package:demo/presentation/blocs/auth/auth_bloc.dart';
import 'package:demo/core/constants/app_theme.dart';

class MyApp extends StatelessWidget {
  final AppRouter _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return MaterialApp(
          title: 'Flutter Clean Architecture',
          theme: AppTheme.lightTheme,
          onGenerateRoute: _appRouter.onGenerateRoute,
          initialRoute: state is AuthAuthenticated ? '/home' : '/login',
        );
      },
    );
  }
}
