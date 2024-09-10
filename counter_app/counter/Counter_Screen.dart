import 'package:flutter/material.dart';
import 'package:flutter_application_1/moduels/counter_app/counter/cubit/cubit.dart';
import 'package:flutter_application_1/moduels/counter_app/counter/cubit/states.dart';


import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return BlocProvider(
      create: (BuildContext context) => CounterCbuit(),
      child: BlocConsumer<CounterCbuit, CounterState>(
        listener: (context, state) {
          if (state is counterplus) {
            print('plus is ${state.counter}');
          }
          if (state is counterminius) {
            print('minius is ${state.counter}');
          }
        },
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.blue,
              title: Text('Counter'),
            ),
            body: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    color: Colors.green,
                    child: TextButton(
                      onPressed: () {
                        CounterCbuit.get(context).minius();
                      },
                      child: Text(
                        'MINUS',
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text('${CounterCbuit.get(context).counter}',
                        style: TextStyle(
                          fontSize: 60.0,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                  Container(
                    // decoration:
                    //     BoxDecoration(borderRadius: BorderRadius.circular(),),
                    color: Colors.black,
                    child: TextButton(
                      onPressed: () {
                        CounterCbuit.get(context).plus();
                      },
                      child: Text(
                        'PLUS',
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
