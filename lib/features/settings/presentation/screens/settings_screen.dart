import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:demo/features/counter/bloc/counter_bloc.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Settings')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Settings Screen'),
            SizedBox(height: 20),
            BlocBuilder<CounterBloc, CounterState>(
              builder: (context, state) {
                return Text(
                  'Current counter value: ${state.count}',
                  style: TextStyle(fontSize: 18),
                );
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () =>
                  context.read<CounterBloc>().add(IncrementCounter()),
              child: Text('Increment Counter'),
            ),
          ],
        ),
      ),
    );
  }
}
