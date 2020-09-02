import 'dart:convert';

import 'package:estock/blocs/load/load_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  List data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Stock Market"),
      ),
      body: Container(
        child: Center(child: BlocBuilder<LoadBloc, LoadState>(
          builder: (context, state) {
            if (state is LoadSuccessState) {
              return ListView.builder(
                  itemCount: 100,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      margin: EdgeInsets.all(10),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text(
                                "Trade Code" + state.data[index]['trade_code']),
                            Text("High" + state.data[index]['high']),
                            Text("Low" + state.data[index]['low']),
                          ],
                        ),
                      ),
                    );
                  });
            } else {
              return Container(
                alignment: Alignment.center,
                color: Colors.white,
                child: CircularProgressIndicator(),
              );
            }
          },
        )),
      ),
    );
  }
}
