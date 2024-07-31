import 'package:counter_app/bloc/counter_bloc.dart';
import 'package:counter_app/inc_dec_page.dart';
import 'package:flutter/material.dart';
import 'package:counter_app/cubit/counter_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // final counterCubit = CounterCubit(); // made an instance of CounterCubit

  @override
  Widget build(BuildContext context) {
    // final counterBloc = BlocProvider.of<CounterBloc>(context);
    // you will need this if you specify bloc: in BlocBuilder
    // Otherwise blocBuilder will go up the widget tree to find the blocProvider
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            BlocBuilder<CounterBloc, int>(
                // bloc: counterBloc,
                builder: (context, counter) {
                  return Text(
                    '$counter',
                    style: Theme.of(context).textTheme.headlineMedium
                  );
                })
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        // onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const IncDecPage())),
        onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: (context) => const IncDecPage()));} ,
        tooltip: 'Increment',
        child: const Icon(Icons.navigate_next)
      ),
    );
  }
}
