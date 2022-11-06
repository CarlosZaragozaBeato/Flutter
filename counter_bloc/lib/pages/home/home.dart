import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/bloc/counter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter APP with bloc"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocConsumer<CounterBloc, CounterState>(
            listener: (context, state) {
              if (state is IncrementState) {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text("Increased"),
                  duration: Duration(milliseconds: 100),
                ));
              }
              if (state is DecrementState) {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text("Decreased"),
                  duration: Duration(milliseconds: 100),
                ));
              }
            },
            builder: (context, state) {
              return Column(
                children: [
                  Text(state.counterValue.toString(),
                      style: const TextStyle(
                        fontSize: 30.0,
                      )),
                ],
              );
            },
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () => context
                        .read<CounterBloc>()
                        .add(CounterIncrementEvent()),
                    child: const Text("+1"),
                  ),
                  ElevatedButton(
                    onPressed: () => context
                        .read<CounterBloc>()
                        .add(CounterIncrementPlusTenEvent()),
                    child: const Text("+10"),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                      onPressed: () => context
                          .read<CounterBloc>()
                          .add(CounterDecrementEvent()),
                      child: const Text("-1")),
                  ElevatedButton(
                      onPressed: () => context
                          .read<CounterBloc>()
                          .add(CounterDecrementMinusTenEvent()),
                      child: const Text("-10"))
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
