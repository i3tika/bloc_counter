import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'decrement/bloc/decrement_bloc.dart';


class PaGeScreen extends StatelessWidget {
  PaGeScreen({super.key});
  int _chislo = 0;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DecrementBloc(),
      child: BlocBuilder<DecrementBloc, DecrementState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: Text('Counter_BLoC',),centerTitle: true,
              backgroundColor: Colors.purple,),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BlocBuilder<DecrementBloc, DecrementState>(
                    builder: (context, state) {
                      if (state is DecrementInitial) {
                        return Text(
                          "$_chislo",
                          style: const TextStyle(fontSize: 60),
                        );
                      }
                      if (state is DecrementSucces) {
                        _chislo = state.counter;
                        return Text(
                          "$_chislo",
                          style: const TextStyle(fontSize: 60),
                        );
                      }
                      return Text(
                        "$_chislo",
                        style: const TextStyle(fontSize: 60),
                      );
                    },
                  ),
                  // Text('$state'),
                ],
              ),
            ),
            floatingActionButton: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FloatingActionButton(
                  backgroundColor: Colors.deepOrange,
                  onPressed: () {
                    BlocProvider.of<DecrementBloc>(context)
                        .add(SendDecrementEvent(counter: _chislo));
                   
                  },
                  //  _incrementCounter,
                  tooltip: 'Increment',
                  child: const Icon(Icons.remove),
                ),
                const SizedBox(
                  width: 10,
                ),
                FloatingActionButton(
                  backgroundColor: Colors.green,
                  onPressed: () {
                     BlocProvider.of<DecrementBloc>(context)
                        .add(IncrementEventCounter(counter: _chislo));
                  },
                  //  _incrementCounter,
                  tooltip: 'Increment',
                  child: const Icon(Icons.add),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
