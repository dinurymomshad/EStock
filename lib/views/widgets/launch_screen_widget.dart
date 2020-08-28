import 'package:estock/blocs/load/load_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LaunchScreenWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoadBloc, LoadState>(
      listener: (_, LoadState state) {
        if (state is LoadInitialState) {
          ///TODO: Trigger an event that will fetch data from firebase
          BlocProvider.of<LoadBloc>(context)..add(LoadInProgressEvent());
        }
        if (state is LoadSuccessState) {
          ///TODO: When data is fetched successfully use this state
          /*Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => HomePage()));*/
        }
      },
      builder: (context, state) {
        if (state is LoadInitialState)
          BlocProvider.of<LoadBloc>(context)..add(LoadInProgressEvent());
        if (state is LoadInProgressState) {
          return Scaffold(
            backgroundColor: Colors.white,
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 95,
                    height: 80,
                    child: Image.asset(
                      "assets/Rectangel_Logo.png",
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  SizedBox(height: 20),
                  CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation(Colors.black))
                ],
              ),
            ),
          );
        }
        return Center(child: CircularProgressIndicator());
      },
    );
  }
}
