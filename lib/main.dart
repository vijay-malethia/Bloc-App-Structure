import 'package:demo/presentation/screens/auth/bloc/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:demo/app.dart';
import 'package:demo/data/repositories/auth_repository_impl.dart';
import 'package:demo/data/providers/api_provider.dart';

void main() {
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
          create: (context) => AuthBloc(
            authRepository: AuthRepositoryImpl(
              apiProvider: ApiProvider(),
            ),
          ),
        ),
      ],
      child: MyApp(),
    ),
  );
}
