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
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            FloatingActionButton(
              heroTag: "btn1",
                onPressed: () => counterBloc.add(CounterIncremented()),
                tooltip: 'Increment',
                child: const Icon(Icons.add)
            ),
            const SizedBox(height: 10,),
            FloatingActionButton(
              heroTag: "btn2",
                onPressed: () => counterBloc.add(CounterDecremented()),
                tooltip: 'Increment',
                child: const Icon(Icons.minimize)
            ),
            const SizedBox(height: 10,),
            FloatingActionButton(
              heroTag: "btn3",
                onPressed: () => counterBloc.add(CounterReset()),
                tooltip: 'Increment',
                child: const Icon(Icons.restart_alt_outlined)
            ),
            const SizedBox(height: 10,),
            FloatingActionButton(
              heroTag: "btn4",
                onPressed: () => counterBloc.add(CounterMultiply(multiplyBy: 2)),
                tooltip: 'Increment',
                child: const Padding(
                  padding: EdgeInsets.only(top: 8),
                  child: Center(child: Text("*", style: TextStyle(fontSize: 18),)),
                )
            ),
          ],
        )
    );
  }
}
