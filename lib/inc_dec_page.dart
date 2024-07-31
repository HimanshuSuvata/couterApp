import 'package:counter_app/bloc/counter_bloc.dart';
import 'package:counter_app/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class IncDecPage extends StatelessWidget {
  const IncDecPage({super.key});

  @override
  Widget build(BuildContext context) {
    final counterBloc = BlocProvider.of<CounterBloc>(context);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text(""),
        ),
        floatingActionButton:  Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
                onPressed: () => counterBloc.add(CounterIncremented()),
                tooltip: 'Increment',
                child: const Icon(Icons.add)
            ),
            const SizedBox(height: 10,),
            FloatingActionButton(
                onPressed: () => counterBloc.add(CounterDecremented()),
                tooltip: 'Increment',
                child: const Icon(Icons.minimize)
            ),
            const SizedBox(height: 10,),
            FloatingActionButton(
                onPressed: () => counterBloc.add(CounterReset()),
                tooltip: 'Increment',
                child: const Icon(Icons.restart_alt_outlined)
            ),
          ],
        )
    );
  }
}
